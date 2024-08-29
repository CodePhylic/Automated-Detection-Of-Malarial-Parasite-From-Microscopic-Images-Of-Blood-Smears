function Result=HuANN(I)
%originalImage = imread('rbc_in50.jpg');
%binaryImage=rgb2gray(originalImage);
[m,n]=size(I);
%Perform a thresholding operation
for i=1:m
	for j=1:n
		if(I(i,j)>100)
			I(i,j)=1;
		end
	end
end
HuVector=feature_vec(I);
for i=1:7
    if(HuVector(i,1)<=0)
        HuVector(i,1)=0;
    end
end
% figure;imshow(originalImage);
% figure;imshow(binaryImage);
% load Hu_Vector_input;
% load Hu_target_data;
% HU_NET=newpr(Hu_Vector_input,Hu_target_data,100);
% HU_Trained_NET=train(HU_NET,Hu_Vector_input,Hu_target_data);
% load HU_Trained_NET;
% Result=sim(HU_Trained_NET,HuVector);
Result=HU_ANN_FUNC(HuVector);

end