%% Code by Gabriel, Electrical Engineering Department
%% Gadjah Mada University
%% Example of Gibbs Phenomenon
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=-6:0.0001:6;
nmax=10; % banyaknya iterasi, dapat diubah - ubah sesuai permintaan
T=4; %periode isyarat yang diamati
w0 = 2*pi/T;
x = 1/2; %masukkan koefisien a0 di sini
for n=1:nmax
a = (cos(n*w0*t))*((2/(n*pi))*(sin(n*pi/2)));
%masukkan koefisien an di sini lalu kalikan dengan cos(n*w0*t)
b = 0;
%masukkan koefisien bn di sini lalu kalikan dengan sin(n*w0*t)
x=x+a+b; %dc term+cosine terms+sine terms
figure(1)
%hold on
plot(t,x)
title('Representasi deret Fourier isyarat v(t)')
xlabel('Waktu (s)')
ylabel('Amplitude')
grid on
axis([-2 2 -0.5 1.5])
%pause(0.1)
end