%%%%%% Performance comparison of multiple image fusion algorithms
clc;
clear all;
close all;
%% Read the picture in the folder
im_fusion=rgb2gray(imread('DWT.png'));
im_ref=rgb2gray(imread('lap_PY.png'));
ENTR=analyze_entropy(im_fusion);%The calculation of image entropy
RMSE=analyze_RMSE(im_ref,im_fusion);%Processing the RMSE of the image
CORR=analyze_correlation(im_ref,im_fusion);%Calculate the correlation coefficient of the image
PSNR = 10*log10(255^2/(RMSE^2));%Peak signal to noise ratio of images
