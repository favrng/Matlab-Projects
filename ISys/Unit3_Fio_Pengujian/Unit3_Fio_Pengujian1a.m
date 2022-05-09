clc
clear
%% Code by Gabriel, Electrical Engineering Department
%% Modified by Fiorella Averina Gunawan (19/443579/TK/48775)
%% Gadjah Mada University
%% Example of Complex Exponential
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Complex plot
t=0:0.01:8;
omega1=(pi/4);
omega2=(-pi/4);
R=1/(2);
[x1,y1]=pol2cart(omega1,R);
[x2,y2]=pol2cart(omega2,R);
z1=x1+1i*y1;
z2=x2+1i*y2;
cos_jw = z1+z2;
sin_jw = (1/1i)*(z1-z2);
figure(1)
clf
hold on
plot(z1,'*')
plot(z2,'*')
plot(real(cos_jw),imag(cos_jw),'o')
plot(real(sin_jw),imag(sin_jw),'x')
axis equal
axis([-1 1 -1 1])
grid on
xlabel('Real')
ylabel('Imajiner')
title('Bidang Kompleks (\omega = \pi/4)')
legend({'z1','z2', 'cos(j\omega)', 'sin(j\omega)'},'Location','northeast')