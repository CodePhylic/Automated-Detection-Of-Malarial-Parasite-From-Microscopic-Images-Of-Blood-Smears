img1=imread('sam10.jpg');
img2=imread('sam22.jpg');


% 3 rgb planes extracted for image 1............
imgr=img1(:,:,1);
imgg=img1(:,:,2);
imgb=img1(:,:,3);


% 3 rgb planes extracted for image 2...........
imgr1=img2(:,:,1);
imgg1=img2(:,:,2);
imgb1=img2(:,:,3);

% histogram representation of the planes of the second image.........
hmimgr1=imhist(imgr1);
hmimgg1=imhist(imgg1);
hmimgb1=imhist(imgb1);


% histogram equalization of the planes of the first image.........
outr=histeq(imgr,hmimgr1);
outg=histeq(imgg,hmimgr1);
outb=histeq(imgb,hmimgr1);

% Store the histogram values...........
histsp(:,:,1)=outr;
histsp(:,:,2)=outg;
histsp(:,:,3)=outb;

% Show a comparison among the input reference and output......
% image...............
figure;
subplot(221);imshow(img1);title('input image');
subplot(222);imshow(img2);title('Reference image');
subplot(224);imshow(histsp);title('Output image'); %Result after historgam equlization............

% Plot for histogram specification..............
figure;
subplot(331);plot(imgr);title('Red image');
subplot(334);plot(imgg);title('Green image');
subplot(337);plot(imgb);title('blue image');
subplot(332);plot(hmimgr1);title('Red ref');
subplot(335);plot(hmimgg1);title('Green ref');
subplot(338);plot(hmimgb1);title('Blue ref');
subplot(333);imhist(outr);title('Red result');
subplot(336);imhist(outg);title('Green result');
subplot(339);imhist(outb);title('Blue result');

% 