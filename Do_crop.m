function ret_img=Do_crop(x1,y1,img)
p=x1-83;
q=y1-83;
temp=q;
disp(p);
disp(q);
copy=[83,83];
copy=uint8(copy);
for i=1:83
    q=temp;
    for j=1:83
        copy(i,j)=img(p,q);
        q=q+1;
    end
    p=p+1;
end
ret_img=copy;
end