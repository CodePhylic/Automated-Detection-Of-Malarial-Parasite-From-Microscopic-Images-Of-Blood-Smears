trainingset= [100,2];
checkset= [100,2];
im = [103,103];
out = uint8(im);
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
            if val<=20
                out(i,j)=0;
            elseif val>=20 && val<35
                out(i,j)=200;
            else
                 out(i,j)=255;
            end
        end
end
I1 = rgb2gray(imread('sam1.jpg'));
c1 = normxcorr2(out,I1);
z=1;
[p1,p2]= size(c1);
temp=0;
for i=1:p1
    for j=1:p2
        if c1(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I2 = rgb2gray(imread('sam2.jpg'));
c2 = normxcorr2(out,I2);
z=2;
[p1,p2]= size(c2);
temp=0;
for i=1:p1
    for j=1:p2
        if c2(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I3 = rgb2gray(imread('sam3.jpg'));
c3 = normxcorr2(out,I3);
z=3;
[p1,p2]= size(c3);
temp=0;
for i=1:p1
    for j=1:p2
        if c3(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I4 = rgb2gray(imread('sam4.jpg'));
c4 = normxcorr2(out,I4);
z=4;
[p1,p2]= size(c4);
temp=0;
for i=1:p1
    for j=1:p2
        if c4(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I5 = rgb2gray(imread('sam5.jpg'));
c5 = normxcorr2(out,I5);
z=5;
[p1,p2]= size(c5);
temp=0;
for i=1:p1
    for j=1:p2
        if c5(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I6 = rgb2gray(imread('sam6.jpg'));
c6 = normxcorr2(out,I6);
z=6;
[p1,p2]= size(c6);
temp=0;
for i=1:p1
    for j=1:p2
        if c6(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I7 = rgb2gray(imread('sam7.jpg'));
c7 = normxcorr2(out,I7);
z=7;
[p1,p2]= size(c7);
temp=0;
for i=1:p1
    for j=1:p2
        if c7(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I8 = rgb2gray(imread('sam8.jpg'));
c8 = normxcorr2(out,I8);
z=8;
[p1,p2]= size(c8);
temp=0;
for i=1:p1
    for j=1:p2
        if c8(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I9 = rgb2gray(imread('sam9.jpg'));
c9 = normxcorr2(out,I9);
z=9;
[p1,p2]= size(c9);
temp=0;
for i=1:p1
    for j=1:p2
        if c9(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I10 = rgb2gray(imread('sam10.jpg'));
c10 = normxcorr2(out,I10);
z=10;
[p1,p2]= size(c10);
temp=0;
for i=1:p1
    for j=1:p2
        if c10(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I11 = rgb2gray(imread('sam11.jpg'));
c11 = normxcorr2(out,I11);
z=11;
[p1,p2]= size(c11);
temp=0;
for i=1:p1
    for j=1:p2
        if c11(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I12 = rgb2gray(imread('sam12.jpg'));
c12 = normxcorr2(out,I12);
z=12;
[p1,p2]= size(c12);
temp=0;
for i=1:p1
    for j=1:p2
        if c12(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I13 = rgb2gray(imread('sam13.jpg'));
c13 = normxcorr2(out,I13);
z=13;
[p1,p2]= size(c13);
temp=0;
for i=1:p1
    for j=1:p2
        if c13(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I14 = rgb2gray(imread('sam14.jpg'));
c14 = normxcorr2(out,I14);
z=14;
[p1,p2]= size(c14);
temp=0;
for i=1:p1
    for j=1:p2
        if c14(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I15 = rgb2gray(imread('sam15.jpg'));
c15 = normxcorr2(out,I15);
z=15;
[p1,p2]= size(c15);
temp=0;
for i=1:p1
    for j=1:p2
        if c15(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
% I16 = rgb2gray(imread('sam16.jpg'));
% c16 = normxcorr2(out,I16);
% z=16;
% [p1,p2]= size(c16);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c16(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I17 = rgb2gray(imread('sam17.jpg'));
% c17 = normxcorr2(out,I17);
% z=17;
% [p1,p2]= size(c17);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c17(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I18 = rgb2gray(imread('sam18.jpg'));
% c18 = normxcorr2(out,I18);
% z=18;
% [p1,p2]= size(c18);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c18(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I19 = rgb2gray(imread('sam19.jpg'));
% c19 = normxcorr2(out,I19);
% z=19;
% [p1,p2]= size(c19);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c19(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I20 = rgb2gray(imread('sam20.jpg'));
% c20 = normxcorr2(out,I20);
% z=20;
% [p1,p2]= size(c20);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c20(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I21 = rgb2gray(imread('sam21.jpg'));
% c21 = normxcorr2(out,I21);
% z=21;
% [p1,p2]= size(c21);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c21(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I22 = rgb2gray(imread('sam22.jpg'));
% c22 = normxcorr2(out,I22);
% z=22;
% [p1,p2]= size(c22);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c22(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I23 = rgb2gray(imread('sam23.jpg'));
% c23 = normxcorr2(out,I23);
% z=23;
% [p1,p2]= size(c23);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c23(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I24 = rgb2gray(imread('sam24.jpg'));
% c24 = normxcorr2(out,I24);
% z=24;
% [p1,p2]= size(c24);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c24(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I25 = rgb2gray(imread('sam25.jpg'));
% c25 = normxcorr2(out,I25);
% z=25;
% [p1,p2]= size(c25);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c25(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I26 = rgb2gray(imread('sam26.jpg'));
% c26 = normxcorr2(out,I26);
% z=26;
% [p1,p2]= size(c26);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c26(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I27 = rgb2gray(imread('sam27.jpg'));
% c27 = normxcorr2(out,I27);
% z=27;
% [p1,p2]= size(c27);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c27(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I28 = rgb2gray(imread('sam28.jpg'));
% c28 = normxcorr2(out,I28);
% z=28;
% [p1,p2]= size(c28);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c28(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I29 = rgb2gray(imread('sam29.jpg'));
% c29 = normxcorr2(out,I29);
% z=29;
% [p1,p2]= size(c29);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c29(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I30 = rgb2gray(imread('sam30.jpg'));
% c30 = normxcorr2(out,I30);
% z=1;
% [p1,p2]= size(c30);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c30(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I31 = rgb2gray(imread('sam31.jpg'));
% c31 = normxcorr2(out,I31);
% z=31;
% [p1,p2]= size(c31);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c31(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I32 = rgb2gray(imread('sam32.jpg'));
% c32 = normxcorr2(out,I32);
% z=32;
% [p1,p2]= size(c32);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c32(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I33 = rgb2gray(imread('sam33.jpg'));
% c33 = normxcorr2(out,I33);
% z=33;
% [p1,p2]= size(c33);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c33(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I34 = rgb2gray(imread('sam34.jpg'));
% c34 = normxcorr2(out,I34);
% z=34;
% [p1,p2]= size(c34);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c34(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I35 = rgb2gray(imread('sam35.jpg'));
% c35 = normxcorr2(out,I35);
% z=35;
% [p1,p2]= size(c35);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c35(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I36 = rgb2gray(imread('sam36.jpg'));
% c36 = normxcorr2(out,I36);
% z=36;
% [p1,p2]= size(c36);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c36(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I37 = rgb2gray(imread('sam37.jpg'));
% c37 = normxcorr2(out,I37);
% z=37;
% [p1,p2]= size(c37);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c37(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I38 = rgb2gray(imread('sam38.jpg'));
% c38 = normxcorr2(out,I38);
% z=38;
% [p1,p2]= size(c38);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c38(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I39 = rgb2gray(imread('sam39.jpg'));
% c39 = normxcorr2(out,I39);
% z=39;
% [p1,p2]= size(c39);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c39(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I40 = rgb2gray(imread('sam40.jpg'));
% c40 = normxcorr2(out,I40);
% z=40;
% [p1,p2]= size(c40);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c40(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I41 = rgb2gray(imread('sam41.jpg'));
% c41 = normxcorr2(out,I41);
% z=41;
% [p1,p2]= size(c41);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c41(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I42 = rgb2gray(imread('sam42.jpg'));
% c42 = normxcorr2(out,I42);
% z=42;
% [p1,p2]= size(c42);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c42(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I43 = rgb2gray(imread('sam43.jpg'));
% c43 = normxcorr2(out,I43);
% z=43;
% [p1,p2]= size(c43);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c43(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I44 = rgb2gray(imread('sam44.jpg'));
% c44 = normxcorr2(out,I44);
% z=44;
% [p1,p2]= size(c44);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c44(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
% I45 = rgb2gray(imread('sam45.jpg'));
% c45 = normxcorr2(out,I45);
% z=45;
% [p1,p2]= size(c45);
% temp=0;
% for i=1:p1
%     for j=1:p2
%         if c45(i,j)>=0.4
%             temp=1;
%             break;
%         else
%             temp=0;
%         end    
%     end
%     if temp==1
%         break;
%     end
% end
% if temp==1
%     checkset(z,1)= 1;
% else
%     checkset(z,1)= 0;
% end
I46 = rgb2gray(imread('sam46.jpg'));
c46 = normxcorr2(out,I46);
z=46;
[p1,p2]= size(c46);
temp=0;
for i=1:p1
    for j=1:p2
        if c46(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I47 = rgb2gray(imread('sam47.jpg'));
c47 = normxcorr2(out,I47);
z=47;
[p1,p2]= size(c47);
temp=0;
for i=1:p1
    for j=1:p2
        if c47(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I48 = rgb2gray(imread('sam48.jpg'));
c48 = normxcorr2(out,I48);
z=48;
[p1,p2]= size(c48);
temp=0;
for i=1:p1
    for j=1:p2
        if c48(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I49 = rgb2gray(imread('sam49.jpg'));
c49 = normxcorr2(out,I49);
z=49;
[p1,p2]= size(c49);
temp=0;
for i=1:p1
    for j=1:p2
        if c49(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I50 = rgb2gray(imread('sam50.jpg'));
c50 = normxcorr2(out,I50);
z=50;
[p1,p2]= size(c50);
temp=0;
for i=1:p1
    for j=1:p2
        if c50(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I51 = rgb2gray(imread('sam51.jpg'));
c51 = normxcorr2(out,I51);
z=51;
[p1,p2]= size(c51);
temp=0;
for i=1:p1
    for j=1:p2
        if c51(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
I52 = rgb2gray(imread('sam52.jpg'));
c52 = normxcorr2(out,I52);
z=52;
[p1,p2]= size(c52);
temp=0;
for i=1:p1
    for j=1:p2
        if c52(i,j)>=0.4
            temp=1;
            break;
        else
            temp=0;
        end    
    end
    if temp==1
        break;
    end
end
if temp==1
    checkset(z,1)= 1;
else
    checkset(z,1)= 0;
end
disp(checkset);
figure,imshow(out);
%subplot(2,2,2); imshow(out1);
%subplot(2,2,2); imshow(out2);
% ############################################ Test using normalize cross
I = rgb2gray(imread('sam9.jpg'));
% Ii = butter(6,0.6);
% disp(size(Ii));
figure, imshow(I);
c = normxcorr2(out,I);
figure, surf(c), shading flat
[p1,p2]=size(c);
a= ' malaria detected' ;
b= ' chances of malaria ';
d= ' malaria test negative ';
str=0;
for i=1:p1
    for j=1:p2
        if c(i,j)>=0.5
           disp(a);
           disp(c(i,j));
           str=1;
           disp(find( c == max( c(:) )));
           [ypeak, xpeak] = find(c==max(c(:)));
           yoffSet = ypeak-size(out,1);
           xoffSet = xpeak-size(out,1);
           hFig = figure;
           hAx = axes;          
           imshow(I,'Parent', hAx);
           imrect(hAx, [xoffSet, yoffSet, size(out,1), size(out,1)]);
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