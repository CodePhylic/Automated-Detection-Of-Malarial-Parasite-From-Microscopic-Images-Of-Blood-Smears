function [probability_r,probability_g,probability_b]= Color_hist_range(x1,y1,image_original)

%3 rgb planes extracted for image 1............
imgr=image_original(:,:,1);
imgg=image_original(:,:,2);
imgb=image_original(:,:,3);
%Cropped channels
cropped_red=Do_crop(x1,y1,imgr);
cropped_green=Do_crop(x1,y1,imgg);
cropped_blue=Do_crop(x1,y1,imgb);
%histogram representation of the planes of the cropped portion.........
hmimgr=imhist(cropped_red);
hmimgg=imhist(cropped_green);
hmimgb=imhist(cropped_blue);
% Dekhte chahile dekhabo
figure;
subplot(331);plot(imgr);title('Red image');
subplot(334);plot(imgg);title('Green image');
subplot(337);plot(imgb);title('blue image');
subplot(332);plot(hmimgr);title('Red ref');
subplot(335);plot(hmimgg);title('Green ref');
subplot(338);plot(hmimgb);title('Blue ref');

% copy=cat(3,cropped_red,cropped_green,cropped_blue);
% imwrite(copy,'test1.jpg');
%need another function...Khub Valo....
% figure;imshow(cropped_red);
% figure;imshow(cropped_green);
% figure;imshow(cropped_blue);

cropped=cat(3,cropped_red,cropped_green,cropped_blue);
imwrite(cropped,'test1.jpg');

probability_r=Normalize_hist(cropped_red);
probability_g=Normalize_hist(cropped_green);
probability_b=Normalize_hist(cropped_blue);

end