clc;
clear all;
close all;                        % Clean up workspace
% I= imread('A.png');
% h=fspecial('gaussian',[3 3],1);% A Gauss filter for building a 3*3 template
% %h=double(h);
% %I1=conv2(h,I);%The image I and H are convoluted to get the image after denoising.
% %imshow(I1);
% I1 = imfilter(I,h,'conv');%convolution
% figure(2);
% imshow(I1);
% I2 = imfilter(I,h,'corr');%Relevant
% figure(3);
% imshow(I2);
[imA,map1] = imread('data3.png');


[imB,map2] = imread('data4.png');

% M1 = double(imA) / 256;
% M2 = double(imB) / 256;
M1= double(rgb2gray(imA))/255;
M2= double(rgb2gray(imB))/255;
zt= 3;%The number of layers in wavelet decomposition
ap=1;
mp=1;
figure
imshow(M1);

figure
imshow(M2);
% %% Image fusion algorithm based on discrete wavelet transform
% Y = fuse_dwb(M1, M2, zt, ap, mp);
% % AA=200,BB=250;
% figure
% imshow(Y);
% rgb = label2rgb(gray2ind(Y,AA), jet(BB));
% figure
% imshow(rgb);
% J = grayslice(rgb2gray(rgb),30);%J is an index graph
% AA=30;BB=20;CC=5;
% J = grayslice(Y,AA);
%
% figure,imshow(J,jet(BB));%figure,imshow(J,hot(16));




% figure
% % subplot(2,2,1);
% imshow(Y);
% % title('image fusion with DWT')
% str=['DWT' ,'.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;



% %% SIDWT, Wavelet is Haar
% Y = fuse_sih(M1, M2, zt, ap, mp);
% % subplot(2,2,2)
% figure
% imshow(Y);
% % title('image fusion with SIDWT')
% str=['SIDWT' ,'.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;
% %% PCA
Y = fuse_pca(M1, M2);
% rgb = label2rgb(gray2ind(Y,AA), jet(BB));
% figure
% imshow(rgb);
% J = grayslice(Y,AA);
% figure,imshow(J-CC,jet(BB));%figure,imshow(J,hot(16));
% % subplot(2,2,3)
figure
imshow(Y);
% % title('image fusion with PCA method')
% str=['PCA' ,'.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;
% %% Based on contrast Pyramid
% % Y = fuse_con(M1, M2, zt, ap, mp);
% % figure
% % % subplot(2,2,1)
% % imshow(Y);
% % % title('image fusion with contrast pyramid')
% % str=['con_PY' ,'.png'];
% % print(gcf,'-dpng',str) ;
% % % title('image A');
% % colormap(gray);
% % axis square;
% % %% Based on the morphological differences in Pyramid
% % Y = fuse_mod(M1, M2, zt, ap, mp);
% % % subplot(2,2,2)
% % figure
% % imshow(Y);
% % title('image fusion with morphological difference pyramid')
% % str=['mod_PY' ,'.png'];
% % print(gcf,'-dpng',str) ;
% % % title('image A');
% % colormap(gray);
% % axis square;
% %% Ratio based Pyramid
% Y = fuse_rat(M1, M2, zt, ap, mp);
% % subplot(2,2,3)
% figure
% imshow(Y);
% % title('image fusion with ratio pyramid')
% str=['rate_PY','.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;
% % %% Based on FSD Pyramid
% % Y = fuse_fsd(M1, M2, zt, ap, mp);
% % % subplot(2,2,4)
% % figure
% % imshow(Y);
% % title('image fusion with fsd pyramid')
% % str=['fsd_PY' ,'.png'];
% % print(gcf,'-dpng',str) ;
% % % title('image A');
% % colormap(gray);
% % axis square;
%% Gradient based Pyramid
Y = fuse_gra(M1, M2, zt, ap, mp);
% rgb = label2rgb(gray2ind(Y, AA), jet(BB));
% figure
% imshow(rgb);
% J = grayslice(Y,AA);
% figure,imshow(J-CC,jet(BB));%figure,imshow(J,hot(16));
figure
% subplot(1,2,1)
imshow(Y);
% % title('image fusion with gradient pyramid')
% str=['gra_PY' ,'.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;


% rgb = label2rgb(gray2ind(Y, 255), jet(255));
% imshow(rgb);

% %%  laplacian pyramid
% [Y M1T G1]= fuse_lap(M1, M2, zt, ap, mp);
% % subplot(1,2,2)
% figure
% imshow(Y);
% % title('image fusion with laplacian pyramid')
% str=['lap_PY' ,'.png'];
% print(gcf,'-dpng',str) ;
% % title('image A');
% colormap(gray);
% axis square;
