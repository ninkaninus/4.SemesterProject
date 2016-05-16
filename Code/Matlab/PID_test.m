%% Calculate zeros from PID constants

clear
clc

P = 10;
I = 5;
D = 0;

syms x;
sol = solve(P*x+I+D*x^2==0,x)

sol = double(sol)

z1 = -sol(1);
%z2 = 0;%-sol(2);

%%

s = tf('s');

K =  605/12;
T = 0.12;

G = 12*K/(s*(T*s+1));

%C = ((s+z1)*(s+z2))/s;

C = (P*s+I)/s;
C1 = 1/s;
%%

figure(1)
rlocus(G*C)
title('Root Locus - PID Control')
sgrid(.5, 0)
sigrid(100)

test = 1/s*G

 %%

[k,p]=rlocfind(G*C)

%%

sys = G*C*k;

sys=feedback(sys,1)

hold on

DC = dcgain((s-p(2))*(s-p(3)));

SOtf = DC/((s-p(2))*(s-p(3)))

figure(2)
step(sys,SOtf,10)

%%

pzmap(sys)