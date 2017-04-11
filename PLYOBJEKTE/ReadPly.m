% P1 = imread('calib_3_1.bmp');
% P2 = imread('calib_3_2.bmp');
% P3 = imread('calib_3_3.bmp');
% P4 = imread('calib_3_4.bmp');
% P5 = imread('calib_3_5.bmp');
% P6 = imread('calib_3_0.bmp');
% P6 = imread('calib_1_6.bmp');
% 
% P1 = (P1-20)*2;
% P2 = (P2-20)*2;
% P3 = (P3-20)*2;
% P4= (P4-20)*2;
% P5 = (P5-20)*2;
% P6 = (P6-20)*2;
% 
% % figure(1)
% % hold on
% % subplot(2,2,1)
% % imshow(P1)
% % subplot(2,2,2)
% % imshow(P2)
% % subplot(2,2,3)
% % imshow(P3)
% % subplot(2,2,4)
% % imshow(P1)
% % hold off
% alpha = 0.2;
% 
% H =[0 0 0; 0 1 0; 0 0 0]+0.2*[0 -1 0; -1 4 -1; 0 -1 0];
% %fspecial('laplacian',alpha);
% 
% Lap0 = imfilter(P6,H,'replicate');
% Lap1 = imfilter(P1,H,'replicate');
% Lap2 = imfilter(P2,H,'replicate');
% Lap3 = imfilter(P3,H,'replicate');
% Lap4 = imfilter(P4,H,'replicate');
% Lap5 = imfilter(P5,H,'replicate');
% 
% 
% figure(2)
% hold on
% subplot(2,2,1)
% imshow(Lap0)
% subplot(2,2,2)
% imshow(Lap1)
% subplot(2,2,3)
% imshow(Lap2)
% subplot(2,2,4)
% imshow(Lap3)
% 
% 
%  imwrite(Lap0,'myclown1.png')
%  imwrite(Lap1,'myclown2.png')
%  imwrite(Lap2,'myclown3.png')
%  imwrite(Lap3,'myclown4.png')
%   imwrite(Lap4,'myclown5.png')
%  imwrite(Lap5,'myclown6.png')
%%
level = 0.4;
s = 3;

P32 = imread('scheiben_eq_0.bmp');
imhist(P32);
for c = 0:s
    s = strcat('scheiben_',int2str(c),'.bmp');
    %s = strcat('Schachbrett.bmp');
    P1 = imread(s);
    bw = ((P1-17)*3);
    cat = strcat('scheiben_eq_',int2str(c),'.bmp');
    imwrite(bw,cat);
end
%%
cloud = pcread('Punktewolke.ply')
pcshow(cloud)