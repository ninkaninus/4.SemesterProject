function [ new_vector ] = fit_ratio( ratio_vector, input_vector )
% Tager forholdet som de enkelte samples skal justeres med og finder det
% rette offset det skal påføres input vektoren med. Der returneres en ny
% vektor, hvor der justeret for fejlen i målingerne

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
        new_vector(i) = ratio_vector(mod(i+j,n)+1)*input_vector(i);    
    end
    
    for k = 1:n
         test = new_vector(length(new_vector)-n-1+k);
         temp = abs(avg - test);
         err = err + temp;
    end
    
    if err < 120
        break
    end
    err = 0;
end

end

