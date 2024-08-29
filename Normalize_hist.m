function [copy] =Normalize_hist(img)
copy=[256];
copy=uint32(copy);
copy=double(copy);
I=img;
[l,m]=size(I);
for i=1:80
    copy(i,1)=0;
end
for i=1:80
    for j=1:l
        for k=1:m
            if(I(j,k)==i)
                copy(i,1)=copy(i,1)+1;
            end
        end
    end
end
for i=1:80
    temp=copy(i,1);
    copy(i,1)=double(temp/(l*m));
end
%disp(copy);
end