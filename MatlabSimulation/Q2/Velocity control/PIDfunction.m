function y = PIDfunction(u)
global Ts alpha Kp Kd Ki Kb ek_pre u_i_pre e_reset u_df_pre 
w_d = u(1);
w_f = u(2);
ek = w_d-w_f; 

%Khau P
u_p = Kp*ek;

%Loc cho khau D
u_d = Kd*(ek-ek_pre)/Ts;
ek_pre = ek;
u_df = (1-alpha)*u_df_pre + alpha*u_d;
u_df_pre = u_df;

%Anti-windup khau I
b = Kb*e_reset*Ts;
%b = 0;
u_i = u_i_pre + Ki*ek*Ts + b;
u_i_pre = u_i;

y = u_p+u_df+u_i;

if y>24
e_reset = 24-y;
y = 24;
elseif y<-24
e_reset = -24-y;
y = -24;
else
e_reset = 0;
end
end