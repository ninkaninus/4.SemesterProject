function [ T ] = time_constant( K, W, Time )
% Finder tidskonstanten ud fra et givet K

threshold = K*0.632;

k = 0;
for i = 1:length(W)
    
    if W(i) > threshold
        k = i;
        break; 
    end
end
    T = Time(k) - Time(1);

end

