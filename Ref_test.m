im = [83,83];
out = uint8(im);
imt = [110,110];
for i=1:83
            x=i;
        for j=1:83
            y=j;
            x1=(42-x)*(42-x);
            y1=(42-y)*(42-y);
            z =x1+y1;
            val= sqrt(z);
            if val<=15
                out(i,j)=30;
            elseif val>15 && val<40
                out(i,j)=230;
            else
                 out(i,j)=250;
            end
        end
end
figure;imshow(out);