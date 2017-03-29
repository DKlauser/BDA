P1 = imread('multi_view_pipe_joints_cam_0_01.png')
P2 = imread('multi_view_pipe_joints_cam_1_01.png')
P3 = imread('multi_view_pipe_joints_cam_2_01.png')
P4 = imread('multi_view_pipe_joints_cam_3_01.png')

figure(1)
hold on
subplot(2,2,1)
imshow(P1)
subplot(2,2,2)
imshow(P2)
subplot(2,2,3)
imshow(P3)
subplot(2,2,4)
imshow(P1)
hold off


H = fspecial('motion',5,12)

Blur1 = imfilter(P1,H,'replicate')
Blur2 = imfilter(P2,H,'replicate')
Blur3 = imfilter(P3,H,'replicate')
Blur4 = imfilter(P4,H,'replicate')

figure(2)
hold on
subplot(2,2,1)
imshow(Blur1)
subplot(2,2,2)
imshow(Blur2)
subplot(2,2,3)
imshow(Blur3)
subplot(2,2,4)
imshow(Blur4)


imwrite(Blur1,'myclown1.png')
imwrite(Blur2,'myclown2.png')
imwrite(Blur3,'myclown3.png')
imwrite(Blur4,'myclown4.png')

