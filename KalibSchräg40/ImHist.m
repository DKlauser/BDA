figure(2)
img = imread('1.png');
imhist(img);
ylabel('Anzahl Pixel')
T = xlabel('Bit Tiefe')
T.Color = 'white';