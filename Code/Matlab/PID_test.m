%% Calculate zeros from PID constants

clear
clc

P = 8;
I = 16;
D = 1;

syms x;
sol = solve(P*x+I+D*x^2==0,x)

sol = double(sol)

z1 = -sol(1);
z2 = -sol(2);

%%

s = tf('s');

%K =  605/12;
K = 605*1.91/12;
T = 0.13;
%K1 = 530/12;
K1=530*1.91/12;
T1 = 0.44;

Gp=12*K/(T*s+1);
G = 12*K/(s*(T*s+1));
G1= 12*K1/(s*(T1*s+1));
C = ((s+z1)*(s+z2))/s;
step(Gp)
%C = (P*s+I)/s;
C1 = 1/s;
%%

figure(1)
rlocus(G*C)
title('Root Locus - PI Control')
sgrid(.517, 0)
sigrid(0.8)
ylim([-10 10])

test = 1/s*G

 %%

[k,p]=rlocfind(G*C)

%%

sys = G*C*0.005;
%sys2 = G*C_Design2;
%sys4 = G*C_Design4;

sys=feedback(sys,1);
%sys2=feedback(sys2,1)
%sys4=feedback(sys4,1)

figure(2)
[p t]=step(sys,5);

plot(t,p)
title('Step Response for Tilt System');
xlabel('Time[s]');ylabel('Ticks');
grid on;
%%

DC = dcgain((s-p(2))*(s-p(3)));

SOtf = DC/((s-p(2))*(s-p(3)));

figure(2)
step(sys,SOtf,5)

%%

pzmap(sys)