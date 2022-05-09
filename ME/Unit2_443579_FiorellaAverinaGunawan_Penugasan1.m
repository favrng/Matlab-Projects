%Praktikum ME, Unit 2
%Fiorella Averina Gunawan 19/443579/TK/48775
%Penugasan 1

clc; %Membersihkan command window
clear; %Membersihkan workspace
clf; %Membersihkan figure

%%%%Mencari x(t), X(jw), dan membuat plot-nya%%%
[x,Fs]=audioread('Spesifikasi D.wav'); %Mengimpor audio Spesifikasi D.wav
%x adalah data audio, Fs adalah sampling rate audio (frekuensi sampling)
L = length(x); %Panjang audio (x) disimpan di variabel L
T = 1/Fs; %Mendefinisikan periode sampling
t = 0:T:(L-1)*T; %Time vector x(t) dan y(t)
f = Fs*(0:(L/2))/L; %Frequency vektor X(jw) dan Y(jw)
%Penghitungan X(jw)
X = fft(x); %x dikenakan algoritma Fast Fourier Transform, dan hasilnya disimpan di X
X2 = abs(X/L); %Menghitung magnitude X
X1 = X2(1:L/2+1); %X1 adalah isyarat one sided X
X1(2:end-1) = 2*X1(2:end-1); %Setelah dibuat one sided, magnitude dikalikan 2 (sesuai teorema Nyquist)
figure (1) %Plot x(t) dan X(jw)
subplot (2,1,1)
plot(t,x); 
title ('Transmitted Signal (Time Domain)');
xlabel('t(s)'); 
ylabel('Amplitude');
subplot (2,1,2)
plot (f, X1); %Plot one-sided
title ('Transmitted Signal (Frequency Domain)');
xlabel('Normalized Frequency (Hz)'); 
ylabel('Magnitude');

%%%%Mencari h(t), H(jw), dan membuat plot-nya%%%
td = -L:L; %Time vector h(t)
d = dirac(td); %Delta function d(t)
idt = d == Inf; %Mencari t di mana d(t)=Inf, hasilnya disimpan di idt
d(idt) = 1; %Pada t = idt, delta-nya bernilai 1
rugi = 0.35; %Mendefinisikan variabel rugi yang berisi susutan
h = d.*(1-rugi); %Mendefinisikan fungsi h(t)
%Penghitungan H(jw), mirip dengan penghitungan X(jw)
H = fft(h);
LH = length(h);
H2 = abs(H/LH);
H1 = H2(floor(1:(LH/2)+1));
H1(2:end-1) = 2*H1(2:end-1);
fH = Fs*(0:(LH/2))/LH;
figure (2) %Plot h(t) dan H(jw)
subplot (2,1,1)
stem(td,h); %Plot diskret h(t)
xlim([-6,6]); %Interval sumbu horizontal
title ('Channel Impulse Response (Time Domain)');
xlabel('t(s)'); 
ylabel('Amplitude');
subplot (2,1,2)
plot (fH,H1); %Plot one-sided
title ('Channel Impulse Response (Frequency Domain)');
xlabel('Normalized Frequency (Hz)'); 
ylabel('Magnitude');

%%%%Mencari y(t), Y(jw), dan membuat plot-nya%%%
y = conv(x,h,'same'); %Konvolusi x(t) dan h(t) disimpan di variabel y
%Penghitungan Y(jw), mirip dengan penghitungan X(jw)
Y = fft(y);
Y2 = abs(Y/L);
Y1 = Y2(1:L/2+1);
Y1(2:end-1) = 2*Y1(2:end-1);
figure (3) %Plot y(t) dan Y(jw)
subplot (2,1,1)
plot(t,y);
ylim([-1,1]); %Batas sumbu vertikal
xlabel('Seconds'); 
ylabel('Amplitude');
title ('Received Signal (Time Domain)');
xlabel('t(s)'); 
ylabel('Amplitude');
subplot (2,1,2)
plot (f, Y1); %Plot one-sided
title ('Received Signal (Frequency Domain)');
xlabel('Normalized Frequency (Hz)'); 
ylabel('Magnitude');

%%%Memainkan audio%%%
play_x = audioplayer(x, Fs); %Membuat audio player play_x yang berisi audio x dengan sampling rate Fs
play_y = audioplayer(y, Fs); %Membuat audio player play_y yang berisi audio y dengan sampling rate Fs
playblocking(play_x); %Memainkan audio x
pause(2); %Jeda selama 2 sekon setelah pemutaran x selesai
playblocking(play_y); %Memainkan audio y