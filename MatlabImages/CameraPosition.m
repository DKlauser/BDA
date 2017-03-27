
%Pose0 of the Cameras := [-0.0324163,0.0246055,-0.3634,0.305953,0.0558555,179.118,0]
% Pose1 := [-0.032727,-0.035178,-0.362,359.834,359.8,179.089,0]
% Pose2 := [0.0269667,-0.0358865,-0.358598,359.765,359.402,179.062,0]
% Pose3 := [0.02785,0.0258176,-0.361156,359.873,359.494,179.099,0]
%Koordinaten der Punkte.(X,Y,Z)
% punkt0 = -0.100283759073441 0.00439475507706714 0.365165106442979
% punkt1 = -0.0529119296259053 0.00471177601842066 0.364741201168571
% punkt2 = -0.00168643685612025 0.0400540812609162 0.373376214655764
% punkt3 = -0.0510805078067113 0.0465432290873512 0.3712936055225


% Rotationsmatrix für Kamera   
R = [0    0      0;
     0    +1    0;
     0    0     +1];
    
%Darstellungder Kamera
figure(1);
cam0 = plotCamera('Location',[0 0 0],'Orientation',R,'Opacity',0);
hold on
grid on
%Parameter für vergrösserung des Plottes
 xlim([-20,30]);
 ylim([-20,30]);
 zlim([0,50]);
 xlabel('X');ylabel('Y');zlabel('Z');
 %Setzen der Punkte im Koordinaten System.

 plot3(-10.002, 0.4, 36.5,'b*');
 plot3(-5.2, 0.47, 36.4,'y*');
 plot3(-0.168, 4.00 ,37.33,'g*');
 plot3(-5.1, 4.654 ,37.12,'r*');
 hold off;
 figure(2);
 imshow('4Objects.png')
 

 
   

 
 
 
 
 