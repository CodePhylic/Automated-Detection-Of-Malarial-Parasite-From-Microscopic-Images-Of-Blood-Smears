function result=C_Hist_ANN(I)

r=I(:,:,1);
g=I(:,:,2);
b=I(:,:,3);


r=Normalize_hist(r);
g=Normalize_hist(g);
b=Normalize_hist(b);


% load Color_Hist_ANN_input_data_red;
% load Color_Hist_ANN_input_data_blue;
% load Color_Hist_ANN_input_data_green;
% load Color_Hist_ANN_target_data_red;
% load Color_Hist_ANN_target_data_green;
% load Color_Hist_ANN_target_data_blue;


% C_H_NET_RED =newpr(Color_Hist_ANN_input_data_red,Color_Hist_ANN_target_data_red,100);
% C_H_Trained_NET_RED=train(C_H_NET_RED,Color_Hist_ANN_input_data_red,Color_Hist_ANN_target_data_red);
load C_H_Trained_NET_RED;
Result1=sim(C_H_Trained_NET_RED,r);
Result1=C_H_Trained_NET_RED(r);
 if Result1(1)>Result1(2)
      r1=0;
 else
      r1=1;
 end


%C_H_NET_GREEN=newpr(Color_Hist_ANN_input_data_green,Color_Hist_ANN_target_data_green,100);
%C_H_Trained_NET_GREEN=train(C_H_NET_GREEN,Color_Hist_ANN_input_data_green,Color_Hist_ANN_target_data_green);
load C_H_Trained_NET_RED;
Result2=sim(C_H_Trained_NET_GREEN,g);
Result2=C_H_Trained_NET_GREEN(g);
if Result2(1)>Result2(2)
      r2=0;
 else
      r2=1;
 end


%C_H_NET_BLUE=newpr(Color_Hist_ANN_input_data_red,Color_Hist_ANN_target_data_red,100);
%C_H_Trained_NET_BLUE=train(C_H_NET_BLUE,Color_Hist_ANN_input_data_blue,Color_Hist_ANN_target_data_blue);
load C_H_Trained_NET_BLUE;
Result3=sim(C_H_Trained_NET_BLUE,b);
Result3=C_H_Trained_NET_BLUE(b);
if Result3(1)>Result3(2)
      r3=0;
else
      r3=1;
end
% disp(Result1);
% disp(Result2);
% disp(Result3);
result=0;
if (((r1==1)&&(r2==1))||((r2==1)&&(r3==1))||((r1==1)&&(r2==1)))||((r1==1)&&(r2==1)&&(r3==1))
    result=1;
else
    result=0;
end

end