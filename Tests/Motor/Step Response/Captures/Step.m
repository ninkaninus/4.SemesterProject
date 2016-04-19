clear
clc

load('Run 1 - no belt, 1MHz.mat')

[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W1,12);

W1 = fit_ratio(ratio,W1);

figure(1)
plot(Time1,W1);
grid on;
hold on;
xlabel('Time[s]');ylabel('rad/s');

title('Step Response at 12V');

load('Run 1 - belt, 1MHz.mat')

[Time2,W2] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W2 = fit_ratio(ratio,W2);
plot(Time2,W2);

load('Run 1 - belt + frame, 1MHz.mat')

[Time3,W3] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W3 = fit_ratio(ratio,W3);
plot(Time3,W3);

load('Run 1 - belt + frame + cam, 1MHz.mat')

[Time4,W4] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

W4 = fit_ratio(ratio,W4);
plot(Time4,W4);

legend('No Belt','Belt On','Belt+Frame On','Belt+Frame+Cam On','location','southeast')