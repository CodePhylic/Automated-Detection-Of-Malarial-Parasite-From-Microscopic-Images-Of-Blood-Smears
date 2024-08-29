%Read the image
A=imread('flower.jpg');
A=rgb2gray(A);
figure,imshow(A);
title('IMAGE');
[p,q]=size(A);
%disp(x);
%disp(y);
%Add noise..........................
for i=1:4:p
    for j=1:4:q
        A(i,j)=0;      
    end
end    
%figure,imshow(A);
%title('IMAGE WITH NOISE');
B = medfilt2(A);

% A1=zeros(size(A)+2);
% %disp(size(A)+2);
% disp(size(A,2));
% B=zeros(size(A));
%         for i=1:p
%             for j=1:q
%                 A1(i+1,j+1)=A(i,j);
%             end
%         end
% figure,imshow(A1);       
% for i= 1:p
%     for j=1:q
%         window=zeros(9,1);
%         inc=1;
%         for x=1:3
%             for y=1:3
%                 window(inc)=A1(i+x-1,j+y-1);
%                 inc=inc+1;
%             end
%         end       
%         med=sort(window);
%         B(i,j)=med(5);       
%     end
% end
% B=uint8(B);
%figure,imshow(B), title('IMAGE AFTER MEDIAN FILTERING');
C=imadjust(B);
%figure,imshow(C), title('IMAGE AFTER CONTRAST ENHANCEMENT');
subplot(2,2,1);imshow(A),title('Image after addition of noise');
%subplot(2,2,2);plot(B),title('Image afte median filtering');
subplot(2,2,3);imshow(C),title('Image after contrast enhancement');
%subplot(2,2,4);plot(B),title('Image afte median filtering');
% Sharpen the image................ 