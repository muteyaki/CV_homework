clear all;
close all;
clc;


f=double(imread('ldr.bmp'));
f1=kmeans(f,3);
f2=kmeans(f,6);
f3=kmeans(f,9);

subplot(2,2,1);
imshow(f);
title('normal');
subplot(2,2,2);
imshow(f1);
title('k=3');
subplot(2,2,3);
imshow(f2);
title('k=6');
subplot(2,2,4);
imshow(f3);
title('k=9');
hold on;
