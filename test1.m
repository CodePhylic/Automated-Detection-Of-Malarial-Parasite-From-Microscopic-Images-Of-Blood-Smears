im = [103,103];
out = uint8(im);
disp(size(im));
imt = [103,103];
outt = uint8(imt);
zeros(outt);
for i=1:103
            x=i;
        for j=1:103
            y=j;
            x1=(52-x)*(52-x);
            y1=(52-y)*(52-y);
            z =x1+y1;
            val= sqrt(z);
            if val<=15
                out(i,j)=0;
            elseif val>=15 && val<35
                out(i,j)=200;
            else
                 out(i,j)=255;
            end
        end
end
I = rgb2gray(imread('sam25.jpg'));
%I = rgb2gray(imread('sam52.jpg'));
I = medfilt2(I);
[value,location]=max(I(:));
%###################Using xcorr2
% C5=xcorr2(out,outt);
% %disp(C5);
% C1 = fft2(out);
% disp('fft of the reference');
% %disp(C1);
% C2 = fft2(outt);
% disp(' fft of the cropped portion ');
% %disp(C2);
% %C3= conv2(C1,C2);
% %C4 = ifft2(C3);
% C3=C1.*conj(C2);
% disp('Correlation output');
% %disp(C3);
% %disp(size(C3));
% temp1=abs(C3(1,1));
% disp(temp1);
%              for k1=1:103
%                   for k2=1:103
%                       if temp1<C3(k1,k2)
%                           temp1=C3(k1,k2);
%                       else
%                           
%                       end
%                   end
%               end
% disp('Result of cross correlation');
% temp1=0;
% for i=1:103
%     for j=1:103
%         temp1=temp1+C3(i,j);
%     end
% end
% %disp(temp1);
% 
% %###################################################### Find the
% %Correlation
% YDJTYTIUKT<TFGLJGJHGHJGHJG^^&%&^*&&*
[l,m]=size(I);
iteration=0;
for i=1:l-103
    for j=1:m-103
        p=i;
        q=j;  
        x1=1;
        y1=1;
            for x=1:103
                for y=1:103
                    outt(x,y)=I(p,q);
                    if  p == l-103 
                    
                    else
                        p=p+1;
                    end
                end
                    q=q+1;
                    y2=q;
                    x2=x1;
            end
            iteration=iteration+1;           
    end
end            
% % n=1000;
% x1=rand(n,1);
% x2=rand(n,1);
% xc=zeros(2*n-1,1);
% for i=1:2*n-1
%     if(i>n)
%         j1=1;
%         k1=2*n-i;
%         j2=i-n+1;
%         k2=n;
%     else
%         j1=n-i+1;
%         k1=n;
%         j2=1;
%         k2=i;
%     end
%     xc(i)=sum(conj(x1(j1:k1)).*x2(j2:k2));
% end
% xc=flipud(xc);
% #####################Calculation of Cross correlation for whole image
% cor=fftshift(ifft(fft(out).*conj(fft(outt))));
% temp1=cor(1,1);
%             for k1=1:103
%                 for k2=1:102
%                     if temp1>cor(k1,k2)
%                        temp1=cor(k1,k2);
%                     else
%                     end
%                 end
%             end
% disp('correlation at this point is ');
%         if temp1>30000
%             disp(temp1);
%             disp('location......');
%             disp(p);
%             disp(q);
%         else
%         end
%                 
%disp(out);
%disp(size(out));
%   C1 = fft2(out);
%   C2 = fft2(outt);
%   C3= C1.*conj(C2);
%   C4 = ifft2(C3);
%   %disp(C4);
%   temp1=C4(1,1);
%             for k1=1:103
%                  for k2=1:103
%                      if temp1>C4(k1,k2)
%                          temp1=C4(k1,k2);
%                      else
%                          
%                      end
%                  end
%              end
% 
%     end
% end
%figure;imshow(outt);
%disp('cropped image is');
%disp('iteration');
%disp(iteration);
%figure;imshow(outt);
figure,imshow(out);
%subplot(2,2,2); imshow(out1);
%subplot(2,2,2); imshow(out2);
% ############################################ Test using normalize cross
% correlation
c = normxcorr2(out,I);
%disp(c);
[p1, p2]=size(c);
disp( size(c));

figure, surf(c), shading flat

a= ' malaria detected' ;
b= ' chances of malaria ';
d= ' malaria test negative ';
str=0;
for i=1:p1
    for j=1:p2
        if c(i,j)>=0.4
           disp(a);
           disp(c(i,j));
           str=1;
           break;
        end    
    end
    if (str==1)
            break;
    end
end
if str==1
else
    disp(d);
end    
% str1=0;
% if (str==1)
% else    
%     for i=1:p1
%         for j=1:p2
%             if c(i,j)<0.5 && c(i,j)>=0.4
%                 disp(b);
%                 disp(c(i,j));
%                 str1=1;
%                 break;
%             end                    
%         end
%         if (str1==1)
%                 break;
%         end        
%     end
% end
% str2=0;
% if (str==1||str1==1)
%      
% else
%      disp(d);
% end
imwrite(I,'grey1.jpg');
disp(find( c == max( c(:) )));
[ypeak, xpeak] = find(c==max(c(:)));
yoffSet = ypeak-size(out,1);
xoffSet = xpeak-size(out,1);
hFig = figure;
hAx = axes;          
imshow(I,'Parent', hAx);
imrect(hAx, [xoffSet, yoffSet, size(out,1), size(out,1)]);