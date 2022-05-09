%% Code by Gabriel, Electrical Engineering Department
%% Gadjah Mada University
%% Example of Fourier Series and its coefficient in freq domain
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=-6:0.01:6; % time vector, rentang observasi isyarat
nmax=100; % banyaknya iterasi, dapat diubah - ubah sesuai permintaan
T=3; %periode isyarat yang diamati
w0=2*pi/T;
x=0; %masukkan koefisien a0 di sini
for n=1:nmax
a = 0;%masukkan koefisien an di sini lalu kalikan dengan cos(n*w0*t)
b = sin(n*w0*t)*((-2/(pi*n))*cos(pi*n)+(2/(pi*n)^2)*sin(pi*n));
%masukkan koefisien bn di sini lalu kalikan dengan sin(n*w0*t)
x=x+a+b; %dc term+cosine terms+sine terms
end
figure(1)
plot(t,x)
title('Representasi deret Fourier isyarat w(t)')
xlabel('Waktu (s)')
ylabel('Amplitude')
grid on
axis([-7 7 -1.5 1.5]) % dapat diubah - ubah untuk menampilkan gambar dgn
% lebih baik
C0 = 0;
%masukkan magnitude untuk koefisien C0
angle_C0 = 0; %masukkan phase untuk koefisien C0
coef_nmax=4; % dapat diubah - ubah sesuai permintaan
Cn=zeros(1,coef_nmax);
angle_Cn=zeros(1,coef_nmax);
for n=1:coef_nmax
an = 0; %masukkan koefisien an di sini
bn = (-2/(pi*n))*cos(pi*n)+(2/(pi*n)^2)*sin(pi*n); %masukkan koefisien bn di sini
an=0.5.*an;
bn=0.5.*bn;
if abs(an)<0.0001 %memperbaiki akurasi hitungan
an=0;
end
if abs(bn)<0.0001 %memperbaiki akurasi hitungan
bn=0;
end
Cn(n)=sqrt(an.^2+bn.^2);
angle_Cn(n)=atan2(bn,an);
end
n=1:coef_nmax;
figure(2)
clf
subplot(2,1,1)
hold on
stem(0,C0,'b')
stem(n,Cn,'b')
stem(-n,Cn,'b') %magnitude isyarat real bersifat symmetric di origin
hold off
title('Koefisien Fourier (Magnitude)')
xlabel('n')
ylabel('Magnitude')
grid on
subplot(2,1,2)
hold on
stem(0,angle_C0,'r')
stem(n,angle_Cn,'r')
stem(-n,-angle_Cn,'r') %phase isyarat real bersifat antisymmetric di origin
yticks([-pi -3*pi/4 -pi/2 -pi/4 0 pi/4 pi/2 3*pi/4 pi])
yticklabels({'-\pi', '-3/4\pi', '-1/2\pi', '-1/4\pi', '0', '1/4\pi', '1/2\pi', '3/4\pi', '\pi'})
hold off
title('Koefisien Fourier (Phase)')
xlabel('n')
ylabel('Phase (radian)')
grid on