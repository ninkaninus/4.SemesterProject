function [ ratio ] = ratio_vector( vector,lngth )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

meanv = [1:lngth];
for i = 1:lngth
   meanv(i) = vector(length(vector)-i);
end

avg = mean(meanv);

ratio = 1:lngth;
for i = 1:lngth
    ratio(lngth+1-i) = avg/vector(length(vector)-i);
end


end

