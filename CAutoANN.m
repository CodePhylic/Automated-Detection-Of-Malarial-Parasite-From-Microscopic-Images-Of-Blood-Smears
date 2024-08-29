function R1=CAutoANN(I)
originalImage = I;
%originalImage=imread('rbc_n1.jpg');
[r,g,b]=RgbChannels(originalImage);
%load Color_Autocorrelogram_input_data;
size_image=rgb2gray(I);
[m,n]=size(size_image);
for i=1:m
	for j=1:n
		if(r(i,j)>175)
			r(i,j)=0;
		end
	end
end

for i=1:m
	for j=1:n
		if(g(i,j)>175)
			g(i,j)=0;
		end
	end
end

for i=1:m
	for j=1:n
		if(b(i,j)>175)
			b(i,j)=0;
		end
	end
end

CA=cat(3,r,g,b);
distance_vector = [1];
correlogram_vector=color_auto_correlogram(CA,distance_vector);
% load Color_Autocorrelogram_input_data;
% load Color_Autocorrelogram_target_data;
% CA_NET=newpr(Color_Autocorrelogram_input_data,Color_Autocorrelogram_target_data,20);
% CA_Trained_NET=train(CA_NET,Color_Autocorrelogram_input_data,Color_Autocorrelogram_target_data);
R1=CA_ANN_FUNC(correlogram_vector);
end