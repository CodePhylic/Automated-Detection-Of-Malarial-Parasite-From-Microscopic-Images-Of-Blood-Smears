function siz=Rbc_size_comp(I)
originalImage=I;
%originalImage=rgb2gray(imread('seg4.jpg'));
%figure;imshow(binaryImage);
[m,n]= size(originalImage);
binaryImage=originalImage;
%Perform a thresholding operation
for i=1:m
	for j=1:n
		if(binaryImage(i,j)>185)
			binaryImage(i,j)=0;
		end
	end
end
binaryImage = imfill(binaryImage, 'holes');
% Find the connected components
labeledImage = bwlabel(binaryImage, 8);
% The connected components(pixels) are cells and now we want to calculate
% the their area, bounding box etc.
cellMeasurements = regionprops(labeledImage , binaryImage, 'all');
% Find the no of cells 
numberOfcells = size(cellMeasurements, 1);
temp=cellMeasurements(1).Area;
%disp(temp);
% Find the biggest component in the present matrix  
for k=1:numberOfcells
    %disp(temp);
    if temp>=cellMeasurements(k).Area
        %thiscellsBoundingBox = cellMeasurements(k).BoundingBox;  % Get list of pixels in current cell.
		% Extract out this cell into it's own image.
		%subImage = imcrop(originalImage, thiscellsBoundingBox);
    else
        temp=cellMeasurements(k).Area;
        %thiscellsBoundingBox = cellMeasurements(k).BoundingBox;  % Get list of pixels in current cell.
		% Extract out this cell into it's own image.
		%subImage = imcrop(originalImage, thiscellsBoundingBox);
    end
    % Return the area of the biggest cell
    siz=temp;
end
%disp('siz');
%disp(siz);
%figure;imshow(subImage);
%figure;imshow(originalImage);
%figure;imshow(binaryImage);
end