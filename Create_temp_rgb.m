function [r,g,b] =Create_temp_rgb(x,y,I)
imgr=I(:,:,1);
imgg=I(:,:,2);
imgb=I(:,:,3);
%Cropped channels
r=Do_crop(x,y,imgr);
g=Do_crop(x,y,imgg);
b=Do_crop(x,y,imgb);
end