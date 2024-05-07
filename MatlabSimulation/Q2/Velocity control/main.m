clc
global Ts alpha Kp Kd Ki Kb ek_pre u_i_pre e_reset u_df_pre 
%Cac thong so dong co: L, R, Km, Jm, b, Ke

La  = 1.71*10^-3; 
Ra  = 0.327;
Km = 0.849; 
Ke = 0.849;
Jm = 0.014; 
b  = 0.16; 
%Gia tri ban dau
ek_pre = 0;
u_i_pre = 0;
e_reset = 0;
u_df_pre = 0;
Ts = 0.01;
alpha = 0.01;

Kp = 0.285635;
Ki = 3.0813;
Kd = 0.001402;
Kb = 46.88;


out = sim("PID.slx");
plot(out.ramp,'g','Linewidth',1)
hold on
plot(out.velociti,'r','Linewidth',1)
%plot(out.T,'g','Linewidth',1)
grid on



