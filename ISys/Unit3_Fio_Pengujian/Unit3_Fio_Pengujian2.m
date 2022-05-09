clc
clear
clf
%% Code by Gabriel, Electrical Engineering Department
%% Modified by Fiorella Averina Gunawan, 19/443579/TK/48775
%% Gadjah Mada University
nmax=4;
T=4; %periode isyarat yang diamati
w0=2*pi/T;
C0 = 1;
angle_C0 = pi;
coef_nmax=4; % dapat diubah - ubah sesuai permintaan
Cn=zeros(1,coef_nmax);
angle_Cn=zeros(1,coef_nmax);
for n=1:coef_nmax
Cn(n) = 2*exp(-1i*n*w0)/(3*((n*w0)^2))+(1i/(2*n*w0))-(1/(2*(n*w0)^2))-1i*exp(-4i*n*w0)/(2*n*w0) - exp(-4i*n*w0)/(6*((n*w0)^2));
end
n=1:coef_nmax;
magnitude_Cn = abs(Cn);
angle_Cn = angle(Cn);

%% Plot belum ternormalisasi
figure(1)
clf
subplot(2,1,1)
hold on
stem(0,2*pi*C0,'b')
stem(n,2*pi*magnitude_Cn,'b')
stem(-n,2*pi*magnitude_Cn,'b') %magnitude isyarat real bersifat symmetric di origin
hold off
title('Magnitude Response')
xlabel('Frekuensi (rad/s)')
ylabel('Magnitude')
xticklabels ({'-4\omega_0', '-3\omega_0', '-2\omega_0', '-1\omega_0', 0, '1\omega_0', '2\omega_0', '3\omega_0', '4\omega_0'})
grid on
subplot(2,1,2)
hold on
stem(0,angle_C0,'r')
stem(n,angle_Cn,'r')
stem(-n,-angle_Cn,'r') %phase isyarat real bersifat antisymmetric di origin
xticklabels ({'-4\omega_0', '-3\omega_0', '-2\omega_0', '-1\omega_0', 0, '1\omega_0', '2\omega_0', '3\omega_0', '4\omega_0'})
yticks([-pi -3*pi/4 -pi/2 -pi/4 0 pi/4 pi/2 3*pi/4 pi])
yticklabels({'-\pi', '-3/4\pi', '-1/2\pi', '-1/4\pi', '0', '1/4\pi', '1/2\pi', '3/4\pi', '\pi'})
hold off
title('Phase Response')
xlabel('Frekuensi (rad/s)')
ylabel('Phase (radian)')
grid on

%% Plot ternormalisasi
figure(2)
clf
subplot(2,1,1)
hold on
stem(0,C0,'b')
stem(n,magnitude_Cn,'b')
stem(-n,magnitude_Cn,'b') %magnitude isyarat real bersifat symmetric di origin
hold off
title('Magnitude Response (Normalized)')
xlabel('Frekuensi (rad/s)')
ylabel('Magnitude')
xticklabels ({'-4\omega_0', '-3\omega_0', '-2\omega_0', '-1\omega_0', 0, '1\omega_0', '2\omega_0', '3\omega_0', '4\omega_0'})
grid on
subplot(2,1,2)
hold on
stem(0,angle_C0,'r')
stem(n,angle_Cn,'r')
stem(-n,-angle_Cn,'r') %phase isyarat real bersifat antisymmetric di origin
xticklabels ({'-4\omega_0', '-3\omega_0', '-2\omega_0', '-1\omega_0', 0, '1\omega_0', '2\omega_0', '3\omega_0', '4\omega_0'})
yticks([-pi -3*pi/4 -pi/2 -pi/4 0 pi/4 pi/2 3*pi/4 pi])
yticklabels({'-\pi', '-3/4\pi', '-1/2\pi', '-1/4\pi', '0', '1/4\pi', '1/2\pi', '3/4\pi', '\pi'})
hold off
title('Phase Response')
xlabel('Frekuensi (rad/s)')
ylabel('Phase (radian)')
grid on

%% Plot dalam Hz
f0 = 2*pi*w0;
figure(3)
clf
subplot(2,1,1)
hold on
stem(0,C0,'b')
stem(n,magnitude_Cn,'b')
stem(-n,magnitude_Cn,'b') %magnitude isyarat real bersifat symmetric di origin
hold off
title('Magnitude Response (Normalized)')
xlabel('Frekuensi (Hz)')
ylabel('Magnitude')
xticklabels ({'8\pif_0', '-6\pif_0', '-4\pif_0', '-2\pif_0', 0, '2\pif_0', '4\pif_0', '6\pif_0', '8\pif_0'})
grid on
subplot(2,1,2)
hold on
stem(0,angle_C0,'r')
stem(n,angle_Cn,'r')
stem(-n,-angle_Cn,'r') %phase isyarat real bersifat antisymmetric di origin
%xticklabels: -4*2*pi*f, -3*2*pi*f, dst
xticklabels ({'8\pif_0', '-6\pif_0', '-4\pif_0', '-2\pif_0', 0, '2\pif_0', '4\pif_0', '6\pif_0', '8\pif_0'})
yticks([-pi -3*pi/4 -pi/2 -pi/4 0 pi/4 pi/2 3*pi/4 pi])
yticklabels({'-\pi', '-3/4\pi', '-1/2\pi', '-1/4\pi', '0', '1/4\pi', '1/2\pi', '3/4\pi', '\pi'})
hold off
title('Phase Response')
xlabel('Frekuensi (Hz)')
ylabel('Phase (radian)')
grid on