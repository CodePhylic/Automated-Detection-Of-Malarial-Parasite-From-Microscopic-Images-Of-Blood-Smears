function R1=HistANN(I)
originalImage = I;
%originalImage=imread('rbc_n1.jpg');
[r,g,b]=RgbChannels(originalImage);
probability_r=Normalize_hist(r);
probability_g=Normalize_hist(g);
probability_b=Normalize_hist(b);
a1 = HIST_ANN_FUNC_R(probability_r);
a2 = HIST_ANN_FUNC_G(probability_g);
a3 = HIST_ANN_FUNC_B(probability_b);
% disp(a1);
% disp(a2);
% disp(a3);

if(a1(1)>a1(2))
    h1=1;
else
    h1=0;
end
if(a2(1)>a2(2))
    h2=1;
else
    h2=0;
end
if(a3(1)>a3(2))
    h3=1;
else
    h3=0;
end
if((((h1==1)&&(h2==1))||((h2==1)&&(h3==1))||((h3==1)&&(h2==1)))||((h1==1)&&(h2==1)&&(h3==1))||((h1==1)||(h2==1)||(h3==1)))
            R1=1;
        else
            R1=0;
end


end