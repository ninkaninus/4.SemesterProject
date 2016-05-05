clear
clc

load('PWM/No Belt/255PWM - no belt.mat')

[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W1,12);
W1 = fit_ratio(ratio,W1);

load('PWM/Belt/255PWM - belt.mat')
[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W1 = fit_ratio(ratio,W1);

load('PWM/Belt/254PWM - belt.mat')
[Time2,W2] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W2 = fit_ratio(ratio,W2);

load('PWM/Belt/220PWM - belt.mat')
[Time3,W3] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W3 = fit_ratio(ratio,W3);

load('PWM/Belt/180PWM - belt.mat')
[Time4,W4] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W4 = fit_ratio(ratio,W4);

load('PWM/Belt/140PWM - belt.mat')
[Time5,W5] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W5 = fit_ratio(ratio,W5);

load('PWM/Belt/100PWM - belt.mat')
[Time6,W6] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W6 = fit_ratio(ratio,W6);

load('PWM/Belt/60PWM - belt.mat')
[Time7,W7] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W7 = fit_ratio(ratio,W7);

%%
load('PWM/No Belt/20PWM - no belt.mat')
[Time9,W9] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W9 = fit_ratio(ratio,W9);

load('PWM/No Belt/40PWM - no belt.mat')
[Time10,W10] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W10 = fit_ratio(ratio,W10);

load('PWM/No Belt/80PWM - no belt.mat')
[Time11,W11] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W11 = fit_ratio(ratio,W11);

load('PWM/No Belt/120PWM - no belt.mat')
[Time12,W12] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W12 = fit_ratio(ratio,W12);

load('PWM/No Belt/160PWM - no belt.mat')
[Time13,W13] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W13 = fit_ratio(ratio,W13);

load('PWM/No Belt/200PWM - no belt.mat')
[Time14,W14] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W14 = fit_ratio(ratio,W14);

load('PWM/No Belt/240PWM - no belt.mat')
[Time15,W15] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
W15 = fit_ratio(ratio,W15);


%%
figure(1)
plot(Time1,W1);
hold on;
plot(Time2,W2);
hold on;
plot(Time3,W3);
hold on;
plot(Time4,W4);
hold on;
plot(Time5,W5);
hold on;
plot(Time6,W6);
hold on;
plot(Time7,W7);


xlabel('Time[s]');ylabel('rad/s');
xlim([0 4]);ylim([0 700]);
title('Step Response at various duty cycles');
grid on;

