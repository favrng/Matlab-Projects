clc
clear
clf

%% Fiorella Averina Gunawan
%% 19/443579/TK/48775

figure (1)
sample (0.4)
figure (2)
sample (0.5)
figure (3)
sample (0.8)
figure (4)
sample (5)
figure (5)
sample (10)
figure (6)
sample (1000)

function sample(Fs)
Ts=1/Fs; % sampling period
L=20; % durasi observasi
N=floor(Fs*L); % jumlah sample selama durasi observasi
t=0:Ts:(L-Ts); % time vector (points of time)
x=cos(2*pi*0.25*t); % 0.25 Hz cosine signal 
hold on
grid on
xlabel ('nTs')
ylabel ('x(nTs)')
title ("Sampling of 0.25 Hz Cosine Signal (Fs = " + Fs + " Hz)");
plot (t,x,'DisplayName','Approximated Signal')
stem (t,x,'o','DisplayName','Discrete Signal')
legend
hold off
disp ("Pada Fs = " + Fs + " Hz," + " N = " + N);

end
