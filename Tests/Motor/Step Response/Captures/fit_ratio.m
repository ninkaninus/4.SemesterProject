function [ new_vector ] = fit_ratio( ratio_vector, input_vector )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

n = length(ratio_vector);

meanv = 1:n;
for i = 1:n
   meanv(i) = input_vector(length(input_vector)-i);
end

avg = mean(meanv);
err = 0;
new_vector = 1:length(input_vector);

for j = 1:n
    
    for i = 1:length(input_vector) 
        new_vector(i) = ratio_vector(mod(i+j,6)+1)*input_vector(i);    
    end
    
    for k = 1:n
         test = new_vector(length(new_vector)-n-1+k);
         temp = abs(avg - test);
         err = err + temp;
    end
    
    if err < 50
        break
    end
    err = 0;
end

end

