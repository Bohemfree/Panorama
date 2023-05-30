#pragma once
#include <iostream>
#include <opencv2/opencv.hpp>

class Paranoma
{
private:
	std::vector<cv::KeyPoint> keypoints1;
	std::vector<cv::KeyPoint> keypoints2;
	cv::Mat descriptors1;
	cv::Mat descriptors2;

	cv::Ptr<cv::DescriptorMatcher> matcher;
	cv::Ptr<cv::Feature2D> featureDetector;
	std::vector<std::vector<cv::DMatch>> matches;
	std::vector<cv::DMatch> good_matches;
	std::vector<cv::DMatch> match1;
	std::vector<cv::DMatch> match2;

	std::vector<cv::Point2f> src_pts;
	std::vector<cv::Point2f> dst_pts;
	int match_count = 10;

public:
	cv::Mat warp_images(cv::Mat& img1, cv::Mat& img2, cv::Mat HMatrix);
	bool stitching_images(cv::Mat& img1, cv::Mat& img2, const int match_count=10, const std::string descriptor="sift");
	bool detect_descriptor(cv::Mat& img1, cv::Mat& img2, const std::string descriptor="sift");
};
