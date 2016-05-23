clear
clc

load('PWM/No Belt/255PWM - no belt.mat')

[Time1,W1] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);

ratio = ratio_vector(W1,12);


%W1 = fit_ratio(ratio,W1);

figure(5)
plot(Time1,W1);
xlabel('Time[s]');ylabel('rad/s');
title('Step Response at 12V');
grid on;

%%

%T1 = time_constant(650,W1,Time1);

figure(1)
plot(Time1,W1);
grid on;
hold on;
xlabel('Time[s]');ylabel('rad/s');

title('Step Response at 12V');

% 

load('Run 1 - belt, 1MHz.mat')

[Time2,W2] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
ratio = ratio_vector(W2,12);

W2 = fit_ratio(ratio,W2);
plot(Time2,W2);

%

load('Run 1 - belt + frame, 1MHz.mat')

[Time3,W3] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
ratio = ratio_vector(W3,12);

W3 = fit_ratio(ratio,W3);
plot(Time3,W3);

%

load('Run 1 - belt + frame + cam, 1MHz.mat')

[Time4,W4] = combine_vectors(digital_channel_0,digital_channel_1,digital_sample_rate_hz);
ratio = ratio_vector(W4,12);

W4 = fit_ratio(ratio,W4);
plot(Time4,W4);
xlabel('Time[s]');ylabel('rad/s');
xlim([0 2.5]);ylim([0 750]);
title('Step Response at 12V');

legend('No Belt','Belt On','Belt+Frame On','Belt+Frame+Cam On','location','southeast')

%%
T1 = time_constant(650,W1,Time1); K1 = 650;
T2 = time_constant(605,W2,Time2); K2 = 605;
T3 = time_constant(600,W3,Time3); K3 = 600;
T4 = time_constant(590,W4,Time4); K4 = 590;

sys1 = tf(K1,[T1 1]);
sys2 = tf(K2,[T2 1]);
sys3 = tf(K3,[T3 1]);
sys4 = tf(K4,[T4 1]);

[W11,Time11] = step(sys1,4);
[W21,Time21] = step(sys2,4);
[W31,Time31] = step(sys3,4);
[W41,Time41] = step(sys4,4);

figure(1)
subplot(2,1,1)
plot(Time1,W1);
title('Measured Step Response');
xlabel('Time[s]');ylabel('rad/s');
xlim([0.0845 0.3345]);ylim([0 700]);
subplot(2,1,2)
plot(Time11,W11);
title('Modelled Step Response');
xlabel('Time[s]');ylabel('rad/s');
xlim([0 0.25]);ylim([0 700]);

figure(2)
subplot(2,1,1)
plot(Time2,W2);
ylim([0,750])
subplot(2,1,2)
plot(Time21,W21);
ylim([0,750])

figure(3)
subplot(2,1,1)
plot(Time3,W3);
ylim([0,750])
subplot(2,1,2)
plot(Time31,W31);
ylim([0,750])

figure(4)
subplot(2,1,1)
plot(Time4,W4);
ylim([0,750])
subplot(2,1,2)
plot(Time41,W41);
ylim([0,750])