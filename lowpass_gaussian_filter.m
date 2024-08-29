%a=50; %Dimension of the gaussian filter
%s=3; % Standerd deviation 
% g=fspecial('gaussian',[a a],s); % Creating the gaussian filter
a=imread('dune.jpg');
an=imnoise(a,'gaussian',0.01); %Adding some noise
sig=3;
cutoff=ceil(3*sig);
h=fspecial('gaussian',2*cutoff+1,sig);
out=conv2(a,h,'same');
w=wiener2(out,[5 5]);
figure;
imshow(out);