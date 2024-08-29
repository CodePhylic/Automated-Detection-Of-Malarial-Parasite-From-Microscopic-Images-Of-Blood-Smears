iteration=0;
im = [2,2];
out= uint8(im);
zeros(out);
im2= [8,8];
out2=uint8(im2);
for i=1:8
    for j=1:8
       out2(i,j)=3;
    end    
end
figure;imshow(out2);
for i=1:8-2
    for j=1:8-2
        p=i;
        q=j;  
        x1=1;
        y1=1;
            for x=1:2
                for y=1:2
                    out(x,y)=out2(p,q);
                    if  p == 8-2 
                    
                    else
                        p=p+1;
                    end
                end
                    q=q+1;
            end
            iteration=iteration+1;
            disp(iteration);
            disp(out);
            disp(size(out));
    end
end
figure;imshow(out);