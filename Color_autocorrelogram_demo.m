I=imread('test1.jpg');
distance_vector=[1 2];
correlogram_vector=color_auto_correlogram(I,distance_vector);
disp(correlogram_vector);