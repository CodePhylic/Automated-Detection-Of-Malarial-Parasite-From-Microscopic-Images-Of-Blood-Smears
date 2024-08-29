%Load the traine neural networks.......
%load HU_Trained_NET;
% We use the technique of normalized cross correlation to find some confirmation about the presence 
% of plasmodium parasite, For this we create a artificial reference RBC image where
% the image contains the features of an infected RBC. We adopt the following steps to create the 
% reference image, We consider the normalized cross-correlation coefficient
% for mesuring the similarity of the reference image with the input image, we traverse the whole image for
% For the infected RBCs, once we get the similarity beyond the threshold value we pass the RBC for 
% further processing, if we get nothing, we diagnose it to be a normal blood sample. 
% Create the artificial reference matrix 
im = [83,83];
out = uint8(im);
imt = [83,83];
segmented=out;
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
%figure;imshow(out);
copy = uint8(imt);
zeros(copy);
original='sam1.jpg';
I1=imread(original);
I=rgb2gray(I1);
% Calculate the size of the rbc with respect to the present image
Rbc_size=Rbc_size_func(I);

[l,m]=size(I);
how_many=0;
str=0;
str1=0;
for y=1:3:l-89
    temp=y;
    for x=1:3:m-89
        p=temp;
            for i=1:83
                q=x;
                for j=1:83
                    copy(i,j)=I(p,q);
                    q=q+1;
                end
                p=p+1;                       
            end
                            c = normxcorr2(out,copy);
                            [p1, p2]=size(c);
                            for u=1:p1
                                for v=1:p2
                                    if c(u,v)>=0.35
                                        str=1;
                                        %disp('one');
                                        %Here we have got the position of
                                        %the suspect,Here we perform the
                                        %segmentation, We should perform
                                        %the feature extraction function
                                        %Call the segmentation function now
                                        
                                        [R1,R2,R3,flag]=Rbc_Segmentation(p,q,copy,I1,Rbc_size);
                                        disp(R1);
                                        disp(R2);
                                        disp(R3);
                                        if(flag==1)
                                            str1=1;
                                            disp('Plasmodium Detected');
                                        else
                                            str1=0;
                                        end
                                        break;
                                    end
                                end
                                if(str==1)
                                    break;
                                end
                            end                            
             if(str1==1)
               break;
             end                
    end
     if(str1==1)
       break;
     end
end
figure;imshow(original);
figure;imshow(copy);
% imwrite(copy,'copy.jpg');