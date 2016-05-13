s = tf('s');

K =  605/12;
T = 0.12;

G = 12*K/(s*(T*s+1));

C = ((s+4.8)*(s+0.2))/s;

rlocus(G*C)
title('Root Locus - PID Control')
sgrid(.5, 0)
sigrid(100)

%%

[k,p]=rlocfind(G*C)

%%



P = 5;
I = 1000;
D = 0.001;

syms x;
sol = solve(P*x+I+D*x^2==0,x)

sol = double(sol)

z1 = -sol(1);
z2 = -sol(2);
%%
C = (P*s+I+D*s^2)/s

%%
C = ((s+z1)*(s+z2))/s

%%
G = 12*K/(s*(T*s+1));

figure(2)
Ts = feedback(G*C*k,1);

step(Ts,10)