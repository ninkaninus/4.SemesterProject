
fileID = load('270To90Both100.txt');
time = fileID(:,1);
pan = fileID(:,2);
tilt = fileID(:,3);

pan = pan - pan(1);
tilt = tilt - tilt(1);

fileID1 = load('270To90Both200.txt');
time1 = fileID1(:,1);
pan1 = fileID1(:,2);
tilt1 = fileID1(:,3);

pan1 = pan1 - pan1(1);
tilt1 = tilt1 - tilt1(1);
%%

plot(time,tilt)
grid on;
title('Simulated 540 tick step tilt');
xlabel('Time[s]');ylabel('Ticks');
xlim([0 3.5]);ylim([0 600]);

%%
figure(1)
subplot(2,2,1)
plot(time, pan)
title('Pan 16%-39% PWM limit')
axis([0 4 0 600])

subplot(2,2,2)
plot(time, tilt)
title('Tilt 16%-39% PWM limit')
axis([0 4 0 600])

subplot(2,2,3)
plot(time1, pan1)
title('Pan 16%-78% PWM limit')
axis([0 4 0 600])

subplot(2,2,4)
plot(time1, tilt1)
title('Tilt 16%-78% PWM limit')
axis([0 4 0 600])