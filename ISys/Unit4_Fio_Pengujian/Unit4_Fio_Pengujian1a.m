clc;
clear;
clf;

% Fiorella Averina Gunawan
% 19/443579/TK/48775

%% Variabel dan Fungsi
w=2*pi;
Fs=10;
Ts=1/Fs; % sampling period
L=100; % durasi observasi
N=floor(Fs*L); % jumlah sample selama durasi observasi
t=0:Ts:(L-Ts); % time vector (points of time)
x=sin(w*t);

%% Plot di Kawasan Waktu
figure (1)
plot (t,x)
xlabel ('Time (seconds)')
ylabel ('Amplitude')
title ('Time Domain')
xlim ([0 10])

%% Ranah Frekuensi
X = fft(x);
k = (-N/2):1:(N/2)-1;
mag_X = abs(X/length(X));
mag_X = mag_X(2:(N/2));
mag_X = [0 fliplr(mag_X) 0 mag_X];
f = 2*pi*k*Fs/N;
figure (2)
plot (f, mag_X)
grid on
xlabel ('Frequency (rad/s)')
ylabel ('Magnitude')
title ('Double Sided Freq Domain')
xticks ([(-10:2:10)*pi])
xticklabels ({'-10\pi','','','','-2\pi',0,'2\pi','','','','10\pi'})
xlim([-10*pi 10*pi])
ylim ([0 1])

%% Laplace
syms t x
x=sin(w*t);
X_laplace = laplace(x);
[symNum,symDen] = numden(X_laplace); %Get numerator and denomerator of symbolic TF
TFnum = sym2poly(symNum); %Convert Symbolic numerator to polynomial
TFden = sym2poly(symDen); %Convert Symbolic denominator to polynomial
TF =tf(TFnum,TFden) %Obtain the tf data
pole = roots(TFden)
zero = roots(TFnum)
figure (3)
pzmap(TF)
xlim ([-10 10])
ylim ([-10 10])
ticks = -10:2:10;
xticks (ticks)
yticks (ticks)
xlabel ('Real Axis')
ylabel ('Imaginary Axis')
title ('Pole-Zero Map')