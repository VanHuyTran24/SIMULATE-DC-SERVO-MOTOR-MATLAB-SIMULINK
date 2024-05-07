Jm = 0.014;
Ng = 1;
psi = 0.02;
NL = 8;
KL = 225;
JL = NL*Jm;
DL = 2*psi*sqrt(JL*KL);
wL = sqrt(KL/JL);
cp = 0.24;
cv = 0.82;
cp2 = cp;
cv2 = 4*cp;
cp1 = cp;
Kp = cp*wL;
Kv = cv*wL;
Kvg = Kv*(Jm+JL/Ng^2);
Kp2 = cp2*wL;
Kv2 = cv2*wL;
Kp1 = cp1*wL;
velocity = 7;
position = 7;


sim('MoPhong1.slx')
figure(1)
%plot(out.ramp,'g','Linewidth',2)
%hold on
%plot(out.position,'r','Linewidth',2)
plot(out.velocity,'g','Linewidth',2)
grid on
title("Velocity response of single axis servo system (Low speed model)",'FontSize',18)
subtitle("Load 2 (NL = 8)",'FontSize',14)
xlabel("Time (s)",'FontSize',14)
ylabel("Velocity (rad/s)",'FontSize',14)
%legend(["Ramp input","Position"],'FontSize',14)
