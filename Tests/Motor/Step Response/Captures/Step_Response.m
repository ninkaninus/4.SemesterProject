clear
clc

load('Run 1 - no belt, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_1(1) = 0;

for i = 1:length(hall_1) - 1
   total_time_1(i+1) = total_time_1(i)+hall_1(i);
end

w_1(1) = 0;
for i = 1:length(hall_1) - 1
   w_1(i+1) = distance/hall_1(i);
end

ratio = ratio_vector(w_1,6);

load('Run 1 - belt, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_2(1) = 0;

for i = 1:length(hall_1)-1
   total_time_2(i+1) = total_time_2(i)+hall_1(i);
end

w_2(1) = 0;
for i = 1:length(hall_1)-1
   w_2(i+1) = distance/hall_1(i);
end

load('Run 1 - belt + frame, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_3(1) = 0;

for i = 1:length(hall_1)-1
   total_time_3(i+1) = total_time_3(i)+hall_1(i);
end

w_3(1) = 0;
for i = 1:length(hall_1)-1
   w_3(i+1) = distance/hall_1(i);
end

load('Run 1 - belt + frame + cam, 1MHz.mat')

hall_1 = digital_channel_0./digital_sample_rate_hz;
hall_2 = digital_channel_1./digital_sample_rate_hz;

distance = pi/3;
total_time_4(1) = 0;

for i = 1:length(hall_1)-1
   total_time_4(i+1) = total_time_4(i)+hall_1(i);
end

w_4(1) = 0;
for i = 1:length(hall_1)-1
   w_4(i+1) = distance/hall_1(i);
end

for i = 1:length(w_4)
   
    w_4_1(i) = ratio(mod(i+2,6)+1)*w_4(i);
    
end

rpm_1 = w_1*(60/(2*pi));
rpm_2 = w_2*(60/(2*pi));
rpm_3 = w_3*(60/(2*pi));
rpm_4 = w_4*(60/(2*pi));

w_1_1 = fit_ratio(ratio,w_1);
w_2_1 = fit_ratio(ratio,w_2);
w_3_1 = fit_ratio(ratio,w_3);
w_4_1 = fit_ratio(ratio,w_4);

figure(1)
subplot(2,1,1)
plot(total_time_1,w_1)
hold on;
subplot(2,1,2)
plot(total_time_1,w_1_1)
hold on;
subplot(2,1,1)
plot(total_time_2,w_2)
hold on;
subplot(2,1,2)
plot(total_time_2,w_2_1)
hold on;
subplot(2,1,1)
plot(total_time_3,w_3)
hold on;
subplot(2,1,2)
plot(total_time_3,w_3_1)
hold on;
subplot(2,1,1)
plot(total_time_4,w_4)
xlabel('Time [s]'); ylabel('rad/s');

subplot(2,1,2)
plot(total_time_4,w_4_1)
xlabel('Time [s]'); ylabel('rad/s');

legend('No Belt','Belt On','Belt+Frame On','Belt+Frame+Cam On','Location','northoutside')