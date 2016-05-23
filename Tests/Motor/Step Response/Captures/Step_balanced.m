clear
clc

load('Pan-Tilt/Tilt Motor.mat')

[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W1,12);
W1 = fit_ratio(ratio,W1);

figure(1)
plot(Time1,W1);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;

%%

load('Pan-Tilt/Tilt Cam Balanced.mat')
[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W1 = fit_ratio(ratio,W1);

load('Run 1 - no belt, 1MHz.mat')

[Time2,W2] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W2,12);

load('Run 1 - belt + frame + cam, 1MHz.mat')

[Time2,W2] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W2 = fit_ratio(ratio,W2);

load('Run 1 - belt + frame, 1MHz.mat')

[Time3,W3] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W3 = fit_ratio(ratio,W3);

load('Run 1 - belt, 1MHz.mat')

[Time4,W4] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W4 = fit_ratio(ratio,W4);

figure(1)
plot(Time1,W1);
hold on;
plot(Time2,W2);
hold on;
%plot(Time3,W3);
hold on;
%plot(Time4,W4);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;
ylim([0 750]);

%%

load('Pan-Tilt/Pan Cam Balanced 8.mat')
[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

for i=1:length(W1)
new_vector(i) = ratio(mod(i+5,12)+1)*W1(i);
end
%W1 = fit_ratio(ratio,W1);

figure(1)
plot(Time1,new_vector);
xlim([0 2.5]);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;