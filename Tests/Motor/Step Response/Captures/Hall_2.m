clear
clc

load('Run 1 - belt, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_1(1) = 0;
total_time_2(1) = 0;

for i = 1:length(hall_1) - 1
   total_time_1(i+1) = total_time_1(i)+hall_1(i);
end

for i = 1:length(hall_2) - 2
   total_time_2(i+1) = total_time_2(i)+hall_2(i);
end

w_1(1) = 0;
for i = 1:length(hall_1) - 1
   w_1(i+1) = distance/hall_1(i);
end

%w_2(1) = 0;
for i = 1:length(hall_2) - 1
   w_2(i+1) = distance/hall_2(i);
end

total_time = sort([total_time_1 total_time_2]);

k = 1;
for i = 1:length(w_1) 
    w(k) = w_2(i);
    k = k + 1;
    w(k) = w_1(i);
    k = k + 1;
end

figure(1)
plot(total_time, w)

ratio = ratio_vector(w,6);

w_1_1 = fit_ratio(ratio,w);
figure(2)
plot(total_time, w_1_1)