function gb=Gabor_filt(image)
[m,n]=size(image);
gb=[m,n];
gb=uint8(gb);
image=im2double(image);
gb=im2double(gb);
figure(1);
imshow(image);
title('Input Image');
%Gabor filter size 7x7 and orientation 90 degree
%declare the variables
gamma=0.3; %aspect ratio
psi=0; %phase
theta=30; %orientation
bw=2.8; %bandwidth or effective width
lambda=3.5; % wavelength
pi=180;

for x=1:m
              for y=1:n
                    x_theta=image(x,y)*cos(theta)+image(x,y)*sin(theta);
                    y_theta=-image(x,y)*sin(theta)+image(x,y)*cos(theta);
                    disp(x_theta);
                    gb(x,y)= exp(-(x_theta.^2/2*bw^2+ gamma^2*y_theta.^2/2*bw^2))*cos(2*pi/lambda*x_theta+psi);
                    %disp(gb);
              end
end
figure(2);
imshow(gb);
title('filtered image');
end