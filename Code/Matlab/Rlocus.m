s = tf('s');

J = 3.2284E-6;
b = 3.5077E-6;
K = 0.0274;
R = 4;
L = 2.75E-6;

P_motor = K/(s*((J*s+b)*(L*s+R)+K^2));

rlocus(P_motor)
title('Root Locus - P Control')
sgrid(.5, 0)
sigrid(100)

%%

poles = pole(P_motor)

rP_motor = minreal(P_motor*(s/max(abs(poles))+1))

figure(1)
rlocus(rP_motor)
title('Root Locus - P Control')
axis([ -300 100 -200 200])
sgrid(.5, 0)
sigrid(100)

C = 1/s;
figure(2)
rlocus(C*rP_motor)
title('Root Locus - I Control')
axis([ -300 100 -200 200])
sgrid(.5, 0)
sigrid(100)

C = (s + 20) / s;
figure(3)
rlocus(C*rP_motor)
title('Root Locus - PI Control')
axis([ -300 100 -200 200])
sgrid(.5, 0)
sigrid(100)

C = (s + 60)*(s + 70) / s;
figure(4)
rlocus(C*rP_motor)
title('Root Locus - PID Control')
axis([ -300 100 -200 200])
sgrid(.5, 0)
sigrid(100)