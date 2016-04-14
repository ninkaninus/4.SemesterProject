plot(Time,RPM)
xlabel('Time [s]'); ylabel('RPM');
title('DC Motor Step Response at 12V');
grid on;

T = 0.016;
K =  209.44;

sys= tf(K,[T 1]);

step(sys)