#include "Main.h"

cv::Mat Paranoma::warp_images(cv::Mat& img1, cv::Mat& img2, cv::Mat H)
{
	int rows1 = img1.rows;
	int cols1 = img1.cols;
	int rows2 = img2.rows;
	int cols2 = img2.cols;

    cv::Mat list_of_points1 = (cv::Mat_<float>(4, 2) << 0, 0, 0, rows1, cols1, rows1, cols1, 0);
    cv::Mat temp_points = (cv::Mat_<float>(4, 2) << 0, 0, 0, rows2, cols2, rows2, cols2, 0);
	temp_points = temp_points.reshape(2);
    cv::Mat list_of_points2(4, 1, CV_32F);

	cv::perspectiveTransform(temp_points, list_of_points2, H);
	list_of_points1 = list_of_points1.reshape(2);
	
    cv::Mat list_of_points;
    cv::vconcat(list_of_points1, list_of_points2, list_of_points);

    cv::Point2f min_point = cv::Point2f(std::numeric_limits<float>::max(), std::numeric_limits<float>::max());
    cv::Point2f max_point = cv::Point2f(std::numeric_limits<float>::lowest(), std::numeric_limits<float>::lowest());
    for (int i = 0; i < list_of_points.rows; i++)
    {
        cv::Point2f point = list_of_points.at<cv::Point2f>(i, 0);
        min_point.x = std::min(min_point.x, point.x);
        min_point.y = std::min(min_point.y, point.y);
        max_point.x = std::max(max_point.x, point.x);
        max_point.y = std::max(max_point.y, point.y);
    }

    cv::Point2f translation_dist(-min_point.x, -min_point.y);

    cv::Mat H_translation = (cv::Mat_<double>(3, 3) << 1, 0, translation_dist.x, 0, 1, translation_dist.y, 0, 0, 1);

    cv::Mat output_img;
    cv::warpPerspective(img1, output_img, H_translation * H, cv::Size(max_point.x - min_point.x, max_point.y - min_point.y));

    cv::Rect roi(cv::Point2i(translation_dist.x, translation_dist.y), img2.size());
    img2.copyTo(output_img(roi));

    return output_img;
}

bool Paranoma::detect_descriptor(cv::Mat& img1, cv::Mat& img2, const std::string descriptor)
{
    // ORB Descriptor
    if (descriptor == "orb")
    {
        featureDetector = cv::ORB::create();
		matcher = cv::BFMatcher::create(cv::NORM_HAMMING);
    }
    // AKAZE Descriptor
	else if (descriptor == "akaze")
	{
        featureDetector = cv::AKAZE::create();
        matcher = cv::BFMatcher::create();
	}
	// SIFT Descriptor
	else
    {
		
    }
    featureDetector->detectAndCompute(img1, cv::noArray(), keypoints1, descriptors1);
    featureDetector->detectAndCompute(img2, cv::noArray(), keypoints2, descriptors2);
	return true;
}

bool Paranoma::stitching_images(cv::Mat& img1, cv::Mat& img2, const int match_count, const std::string descriptor)
{
	if (img1.empty() || img2.empty())
	{
		return false;
	}
	
	detect_descriptor(img1, img2, descriptor);
	matcher->knnMatch(descriptors1, descriptors2, matches, 2);

	// Normal matcher
	//matcher->match(descriptors1, descriptors2, matches);
	//std::sort(matches.begin(), matches.end());
	//std::vector<cv::DMatch> good_matches(matches.begin(), matches.begin() + 50);

	for (const std::vector<cv::DMatch>& m : matches)
	{
		if (m[0].distance < 0.75 * m[1].distance)
		{
			good_matches.push_back(m[0]);
		}
	}

	if (good_matches.size() > 0)
	{
		for (const cv::DMatch& gm : good_matches)
		{
			src_pts.push_back(keypoints1[gm.queryIdx].pt);
			dst_pts.push_back(keypoints2[gm.trainIdx].pt);
		}
		cv::Mat H = cv::findHomography(src_pts, dst_pts, cv::RANSAC, 5.0);
		cv::Mat result_img = warp_images(img1, img2, H);
		cv::imwrite("D:/result.jpg", result_img);
		
		//cv::imshow("result", result_img);
        //cv::waitKey();
        //cv::destroyAllWindows();
		return true;
	}
	return false;
}

void main()
{
	cv::Mat img1, img2;
	img1 = cv::imread("D:/test1.jpg", cv::IMREAD_GRAYSCALE);
	img2 = cv::imread("D:/test2.jpg", cv::IMREAD_GRAYSCALE);

	Paranoma P;
	P.stitching_images(img1, img2, 10, "akaze");
	//P.stitching_images(img1, img2, 10, "orb");
}