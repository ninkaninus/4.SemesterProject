function [ ratio ] = ratio_vector( vector,lngth )
% Genererer en vektor med de forhold som de enkelte samples periodisk
% afviger fra gennemsnittet. Fungerer ved at tage gennemsnittet af samples
% til sidst i vektoren (hvor steady state er opnået) og finde ud af hvor
% meget en sample afviger fra det. Lngth er antallet af samples der er
% inden den periodiske fejl gentager sig selv.

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

