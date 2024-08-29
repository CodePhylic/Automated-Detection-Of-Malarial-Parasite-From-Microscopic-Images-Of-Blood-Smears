function [R1,R2,R3,flag]=Rbc_Segmentation(x,y,im,I,s)
% This function takes a greyscale image 
originalImage = im;
%originalImage = rgb2gray(originalImage);
[r,g,b] = Create_temp_rgb(x,y,I);
siz=s;
binaryImage=originalImage;
[m,n]=size(originalImage);
%Perform a thresholding operation
for i=1:m
	for j=1:n
		if(originalImage(i,j)>175)
			binaryImage(i,j)=0;
		end
	end
end
%Fill the holes
binaryImage = imfill(binaryImage, 'holes');

% Identify individual cells by seeing which pixels are connected to each other.
% Each group of connected pixels will be given a label, a number, to identify it and distinguish it from the other cells.
% Do connected components labeling with either bwlabel() or bwconncomp().
labeledImage = bwlabel(binaryImage, 8);     % Label each cell so we can make measurements of it
% labeledImage is an integer-valued image where all pixels in the cells have values of 1, or 2, or 3, or ... etc.

% Get all the cell properties.  Can only pass in originalImage in version R2008a and later.
cellMeasurements = regionprops(labeledImage, originalImage, 'all');
numberOfcells = size(cellMeasurements, 1);
figure;	% Create a new figure window.
% Maximize the figure window.
str=0;
for k=1:numberOfcells           % Loop through all cells.
		% Find the bounding box of each cell.
		thiscellsBoundingBox = cellMeasurements(k).BoundingBox;  % Get list of pixels in current cell.
		% Extract out this cell into it's own image.
        if ((cellMeasurements(k).Area)>=((0.2)*siz))
                cell = imcrop(originalImage, thiscellsBoundingBox);
            %At this position we are going to call the three functions for Hu momments, Color autocorrelogram 
            %Color histogram.
            % Call the Neural network for HU moments
                Result1=HuANN(cell);
                if Result1(1)>Result1(2)
                            if((cellMeasurements(k).Area)<=((2.5)*siz))
                                    R1=1;
                                    str=1;
                            end
                else
                    R1=0;
                end
        end
        if(str==1)
            break;
        end
end
str1=0;
for k=1:numberOfcells           % Loop through all cells.
		% Find the bounding box of each cell.
		thiscellsBoundingBox = cellMeasurements(k).BoundingBox;  % Get list of pixels in current cell.
		% Extract out this cell into it's own image.
        if ((cellMeasurements(k).Area)>=((0.2)*siz))
            %At this position we are going to call the three functions for Hu momments, Color autocorrelogram 
            %Color histogram.
            % Call the Neural network for HU moments
            r1 = imcrop(r, thiscellsBoundingBox);
            g1 = imcrop(g, thiscellsBoundingBox);
            b1 = imcrop(b, thiscellsBoundingBox);
            CA=cat(3,r1,g1,b1);
            Result2=HistANN(CA);
                        if ((Result2==1)&&(cellMeasurements(k).Area)<=((2.5)*siz))
                            R2=1;
                            str1=1;
                        else
                            R2=0;
                        end
                
        end
        if(str1==1)
            break;
        end
end

%Call for the Color AutoCorrelogram
%ANN................................................
str2=0;
for k=1:numberOfcells           % Loop through all cells.
		% Find the bounding box of each cell.
		thiscellsBoundingBox = cellMeasurements(k).BoundingBox;  % Get list of pixels in current cell
        if((cellMeasurements(k).Area)>=((0.2)*siz))
        % Extract out this cell into it's own image.
		%cell = imcrop(originalImage, thiscellsBoundingBox);
        % %Call The neural net for Color Autocorrelogram.................
            r1 = imcrop(r, thiscellsBoundingBox);
            g1 = imcrop(g, thiscellsBoundingBox);
            b1 = imcrop(b, thiscellsBoundingBox);
            CA=cat(3,r1,g1,b1);
            Result3=CAutoANN(CA);
            if Result3(1)>Result3(2)
                            if((cellMeasurements(k).Area)<=((2.5)*siz))
                                    R3=1;
                                    str2=1;
                            end
            else
                    R3=0;
            end
        end
        if(str2==1)
            break;
        end
end
if((((R1==1)&&(R2==1))||((R2==1)&&(R3==1))||((R3==1)&&(R2==1)))||((R1==1)&&(R2==1)&&(R3==1))||((R1==1)||(R2==1)||(R3==1)))
            flag=1;
        else
            flag=0;
end

end