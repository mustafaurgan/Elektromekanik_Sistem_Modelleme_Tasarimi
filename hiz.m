J=0.01;
J1=0.1;
J2=0.1;
b=0.1;
B1=1;
B2=1;
K=0.01;
K1=100;
R=1;
L=0.5;

s = tf('s');
P_motor = (0.01*s + 1)/(0.0005*s^5 + 0.016*s^4 + 0.63001*s^3 + 6.2002*s^2 + 10.01*s)

A = [0 1 0 0 0;
     0 0 1 0 0;
     0 0 0 1 0;
     0 0 0 0 1;
     0 -20020 -12400.4 -1260.02 -32];
B = [1; 0; 0; 0; 0];
C = [1 0 0 0 0; 0 0.01 0 0 0];
D = 0;
motor_ss = ss(A,B,C,D)
step(motor_ss)

t = 0:0.01:10; % Zaman aralığı
u = ones(size(t)); % Birim basamak sinyali

% State-space modeli için simülasyon yapalım
[y, t] = lsim(ss(A, B, C, D), u, t);

% Sonucu görselleştirelim
plot(t, y);
title('Motor Step Response');
xlabel('Time (s)');
ylabel('Output');