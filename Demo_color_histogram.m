img1=imread('sam3.jpg');
I=rgb2gray(img1);
% 3 rgb planes extracted for image 1............
imgr=img1(:,:,1);
imgg=img1(:,:,2);
imgb=img1(:,:,3);
imwrite(imgr,'red.jpg');
imwrite(imgg,'green.jpg');
imwrite(imgb,'blue.jpg');
% histogram representation of the planes of the second image.........
hmimgr=imhist(imgr);
hmimgg=imhist(imgg);
hmimgb=imhist(imgb);
% Plot for histogram specification..............
figure;
subplot(331);plot(imgr);title('Red image');
subplot(334);plot(imgg);title('Green image');
subplot(337);plot(imgb);title('blue image');
subplot(332);plot(hmimgr);title('Red ref');
subplot(335);plot(hmimgg);title('Green ref');
subplot(338);plot(hmimgb);title('Blue ref');
new=cat(3,imgr,imgg,imgb);
imwrite(new,'new.jpg');
max_r=hm_max(hmimgr);
max_g=hm_max(hmimgg);
max_b=hm_max(hmimgb);
disp(max_r);
disp(max_g);
disp(max_b);