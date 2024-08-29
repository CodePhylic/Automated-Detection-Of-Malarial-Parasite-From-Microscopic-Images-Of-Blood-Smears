function max = hm_max(matrix)
% This function calculates the max maximum intensity that a pixel 
% Has in any givel channels
% Using this for future improvement 
% To develop an algorithm for normalizing an image with respect to another
% image
max=matrix(1,1);
temp=1;
for i=1:255
    if matrix(i,1)>=max
        max=matrix(i,1);
        temp=i;
    end
end
max=temp;
% 
end