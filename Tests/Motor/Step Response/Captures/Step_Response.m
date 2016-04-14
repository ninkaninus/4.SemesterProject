clear
clc

load('Run 1 - belt, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_1(1) = 0;

for i = 1:length(hall_1)
   total_time_1(i+1) = total_time_1(i)+hall_1(i);
end

w_1(1) = 0;
for i = 1:length(hall_1)
   w_1(i+1) = distance/hall_1(i);
end

load('Run 1 - no belt, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_2(1) = 0;

for i = 1:length(hall_1)
   total_time_2(i+1) = total_time_2(i)+hall_1(i);
end

w_2(1) = 0;
for i = 1:length(hall_1)
   w_2(i+1) = distance/hall_1(i);
end

load('Run 1 - belt + frame, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_3(1) = 0;

for i = 1:length(hall_1)
   total_time_3(i+1) = total_time_3(i)+hall_1(i);
end

w_3(1) = 0;
for i = 1:length(hall_1)
   w_3(i+1) = distance/hall_1(i);
end

load('Run 1 - belt + frame + cam, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_4(1) = 0;

for i = 1:length(hall_1)
   total_time_4(i+1) = total_time_4(i)+hall_1(i);
end

w_4(1) = 0;
for i = 1:length(hall_1)
   w_4(i+1) = distance/hall_1(i);
end

rpm_1 = w_1*(60/(2*pi));
rpm_2 = w_2*(60/(2*pi));
rpm_3 = w_3*(60/(2*pi));
rpm_4 = w_4*(60/(2*pi));

figure(1)
subplot(2,1,1)
plot(total_time_1,w_1)
subplot(2,1,2)
plot(total_time_1,rpm_1)
hold on;
subplot(2,1,1)
plot(total_time_2,w_2)
subplot(2,1,2)
plot(total_time_2,rpm_2)
hold on;
%plot(total_time_3,w_3)
hold on;
%plot(total_time_4,w_4)