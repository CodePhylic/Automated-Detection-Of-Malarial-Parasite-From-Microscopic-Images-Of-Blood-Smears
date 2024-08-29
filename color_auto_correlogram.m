function correlogram_vector=color_auto_correlogram(I,distance_vector)

correlogram_vector=[];
[Y,X]=size(rgb2gray(I));

% quantize image into 16 colors = 4x4x4, in RGB space
[img_no_dither, ~] = rgb2ind(I, 256, 'nodither');
[~,d]=size(distance_vector);
count_matrix=zeros(256,d);   total_matrix=zeros(256,d);
prob_dist=cell(1,d);
for serial_no=1:1:d
    for x=1:X
        for y=1:Y
            color=img_no_dither(y,x);
       
            % At the given distance 
            [positive_count,total_count]=get_n(distance_vector(serial_no),x,y,color,img_no_dither,X,Y);
            count_matrix(color+1,serial_no)=count_matrix(color+1,serial_no)+positive_count;
            total_matrix(color+1,serial_no)=total_matrix(color+1,serial_no)+total_count;       
        end
    end

    prob_dist{serial_no}=count_matrix(:,serial_no)./(1+total_matrix(:,serial_no));

end

for serial_no=1:d
    correlogram_vector=cat(1,correlogram_vector,prob_dist{serial_no});
end

end