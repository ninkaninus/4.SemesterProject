%% Calculate zeros from PID constants

clear
clc

P = 22;
I = 123;
D = 1;

syms x;
sol = solve(P*x+I+D*x^2==0,x)

sol = double(sol)

z1 = -sol(1);
z2 = -sol(2);

%%

s = tf('s');

K =  605/12;
T = 0.12;

G = 12*K/(s*(T*s+1));

C = ((s+z1)*(s+z2))/s;

%C = (P*s+I)/s;
C1 = 1/s;
%%

figure(1)
rlocus(G*C)
title('Root Locus - PI Control')
sgrid(.517, 0)
sigrid(0.8)

test = 1/s*G

 %%

[k,p]=rlocfind(G*C)

%%

sys = G*C;
%sys3 = G*C_Design3;
%sys4 = G*C_Design4;

sys=feedback(sys,1)
%sys3=feedback(sys3,1)
%sys4=feedback(sys4,1)

DC = dcgain((s-p(2))*(s-p(3)));

SOtf = DC/((s-p(2))*(s-p(3)))

figure(2)
step(sys,SOtf,0.5)

%%

pzmap(sys)