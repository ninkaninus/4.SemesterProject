clear
clc

load('Pan-Tilt/Pan Motor.mat')

[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W1,12);



W1 = fit_ratio(ratio,W1);

figure(5)
plot(Time1,W1);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;

%%

load('Pan-Tilt/Pan Cam Balanced 5.mat')
[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W1 = fit_ratio(ratio,W1);

figure(1)
plot(Time1,W1);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;