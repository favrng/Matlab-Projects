clc
clear
clf

%% Fiorella Averina Gunawan
%% 19/443579/TK/48775

%% DFT
Fs=5;
Ts=1/Fs; % sampling period
L=20; % durasi observasi
N=floor(Fs*L); % jumlah sample selama durasi observasi
t=0:Ts:(L-Ts); % time vector (points of time)
f0 = 0.25;
omega = 2*pi*f0;
f_0 = f0*Ts; %f'0
x=cos(omega*t); % 0.25 Hz cosine signal 
X = fft(x);
k = t*Fs;
hold on
grid on
xlabel ('k')
ylabel ('Magnitude')
title ("Frequency Domain of 0.25 Hz Cosine Signal (Fs = " + Fs + " Hz & N = " + N + " samples)")
stem (k,X,'o')

%% DTFT
normalized_freq_DTFT = k/N; %Sumbu horizontalnya yaitu k dibagi jumlah sampel
normalized_magnitude = abs(X/length(X)); %Sumbu vertikalnya yaitu besar d ari hasil fft x, dibagi panjangnya
figure (2)
plot (normalized_freq_DTFT, normalized_magnitude)
grid on
title ("Frequency Domain of 0.25 Hz Cosine Signal (Fs = " + Fs + " Hz & L = " + L + " seconds)")
ylim ([0 1])
xlabel ('Normalized DTFT Frequency (Hz)')
ylabel ('Normalized Magnitude')

%% FT
normalized_freq_FT = normalized_freq_DTFT * Fs; %sumbu horizontal adalah sumbu horizontal DTFT yang dikalikan Fs
figure (3)
plot (normalized_freq_FT, normalized_magnitude)
grid on
title ("Frequency Domain of 0.25 Hz Cosine Signal (Fs = " + Fs + " Hz & L = " + L + " seconds)")
ylim ([0 1])
xlabel ('Frequency (Hz)')
ylabel ('Normalized Magnitude')