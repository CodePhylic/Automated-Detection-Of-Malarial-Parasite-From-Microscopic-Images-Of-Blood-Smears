function Rbc_size=Rbc_size_func(I)
% I is a greyscale image
% Matrices for creating an artificial uint8 reference image
im = [83,83];
out = uint8(im);
imt = [83,83];
% Create the uint8 artificial reference image
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
%Initialize a column vector where we can store sizes for particular cells
%The no of matrices depends on the size of the orginal image therefore we
%Take it large.
siz=zeros(10000);
%To keep track of the array index
flag1=1;
% Later to calculate the average
flag2=0;
%The temporary matrix.
copy = uint8(imt);
zeros(copy);
%original='seg4.jpg';
%I1=imread(original);
%I=rgb2gray(I1);
[l,m]=size(I);
str=0;
% For loop for traversing the rows
for y=1:10:l-89
    temp=y;
    %For loop for traversing the columns
    for x=1:10:m-89
        p=temp;
        % For copying the present matrix
            for i=1:83
                q=x;
                for j=1:83
                    copy(i,j)=I(p,q);
                    q=q+1;
                end
                p=p+1;                       
            end
            % For finding out if normalized Cross Correlation Exceeds the
            % threshold if exceeds we will go to the next matrix.
                            c = normxcorr2(out,copy);
                            [p1, p2]=size(c);
                            for u=1:p1
                                for v=1:p2
                                    if c(u,v)>=0.35
                                        str=1;
                                        break;
                                    
                                    end                                    
                                end
                                if(str==1)
                                    break;
                                end
                            end
                            % If the threshold does not cross then only we call
                            % the Rbc_size_comp function
                            if(str~=1)
                                        
                                        flag1=flag1+1;
%                                         disp('flag1');
%                                         disp(flag1);
                                        siz(flag1)=Rbc_size_comp(copy);
%                                         disp(siz(flag1));
                                        flag2=flag2+1;
%                                         disp('flag2');
%                                         disp(flag2);
                            end
                            %For Current matrix the processing has been
                            %done therefore we again initialize str with 0
                            str=0;
    end
end
Rbc_size=0;
for i=1:flag1
    Rbc_size=Rbc_size+siz(flag1);
end
Rbc_size=(Rbc_size)/(flag2);
end