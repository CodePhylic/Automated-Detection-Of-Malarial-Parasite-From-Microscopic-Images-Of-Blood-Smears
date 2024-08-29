%Read the image
A=imread('sam1.jpg');
A=rgb2gray(A);
figure,
imshow(A);
title('IMAGE');
[x,y]=size(A);
%disp(x);
%disp(y);
%Add noise..........................
for i=1:4:x
    for j=1:4:y
        A(i,j)=0;      
    end
end    
%Add noise
%A=imnoise( A,'salt & pepper',.1);
figure,imshow(A);
title('IMAGE WITH NOISE');
A1=zeros(size(A)+2);
%disp(size(A)+2);
disp(size(A,2));
B=zeros(size(A));
        for i=1:x
            for j=1:y
                A1(i+1,j+1)=A(i,j);
            end
        end
figure,imshow(A1);       
for i= 1:size(A1,1)-2
    for j=1:size(A1,2)-2
        window=zeros(9,1);
        inc=1;
        for x=1:3
            for y=1:3
                window(inc)=A1(i+x-1,j+y-1);
                inc=inc+1;
            end
        end       
        med=sort(window);
        B(i,j)=med(5);       
    end
end
B=uint8(B);
figure,imshow(B);
title('IMAGE AFTER MEDIAN FILTERING');