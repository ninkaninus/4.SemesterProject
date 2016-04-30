function [ Time W ] = combine_vectors( channel_0,channel_1,sample_rate )
% Regner inputtet fra de to hall sensorer om til omdrejningshastigheder,
% og kombinerer dem i en vektor. Der genereres også en vektor med
% tidspunkter der matcher omdrejningshastighederne.

hall_1 = channel_0./sample_rate;
hall_2 = channel_1./sample_rate;

distance = pi/3;
total_time_1 = 1:length(hall_1)-1;
total_time_2 = 1:length(hall_2)-1;

for i = 1:length(hall_1) - 1
   total_time_1(i+1) = total_time_1(i)+hall_1(i);
end

for i = 1:length(hall_2) - 1
   total_time_2(i+1) = total_time_2(i)+hall_2(i);
end

%w_1(1) = 0;
for i = 1:length(hall_1) - 1
   w_1(i) = distance/hall_1(i);
end

%w_2(1) = 0;
for i = 1:length(hall_2) - 1
   w_2(i) = distance/hall_2(i);
end

Time = sort([total_time_1 total_time_2]);

k = 1;

if total_time_2(2) > total_time_1(2)
   first = w_1;
   second = w_2;
else
   first = w_2;
   second = w_1;
end

for i = 1:length(w_1) - 5 
    W(k) = first(i);
    k = k + 1;
    W(k) = second(i);
    k = k + 1;
end

% Gør de to vektorer lige store
diff = length(W) - length(Time);

if diff < 0
   Time(:,length(Time)-abs(diff)+1:length(Time)) = []; 
else
   W(:,length(W)-abs(diff)+1:length(W)) = []; 
end

% Slet de to første værdier i vektorerne da de er skrald. Time Stamps er
% off i starten
Time(:,1:2) = [];
W(:,1:2) = [];

% Find tidpunktet hvor grafen skærer x-aksen ud fra hældningen imellem de
% første to punkter. Tilføj så denne tid som nulpunkt for plottet
dW = W(3) - W(1);
dT = Time(3) - Time(1);

slope = dW/dT;

syms t;
dt = solve(slope*t-W(1)==0,t);
dt = double(dt);

Time = [Time(1)-dt Time];
W = [0 W];

Time = Time-1;


end

