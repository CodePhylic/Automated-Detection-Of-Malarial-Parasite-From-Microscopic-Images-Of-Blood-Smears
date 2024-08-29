function [probability_r,probability_g,probability_b]= Color_hist_range_use(image_original)

%3 rgb planes extracted for image 1............
imgr=image_original(:,:,1);
imgg=image_original(:,:,2);
imgb=image_original(:,:,3);
%histogram representation of the planes of the cropped portion.........
hmimgr=imhist(imgr);
hmimgg=imhist(imgg);
hmimgb=imhist(imgb);
probability_r=Normalize_hist(hmimgr);
probability_g=Normalize_hist(hmimgg);
probability_b=Normalize_hist(hmimgb);

end