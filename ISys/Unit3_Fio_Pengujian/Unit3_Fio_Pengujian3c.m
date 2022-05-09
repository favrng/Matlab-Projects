clc
clear
clf

%% Fiorella Averina Gunawan
%% 19/443579/TK/48775

figure (1)
sample (5)

function sample(Fs)
Ts=1/Fs; % sampling period
L=20; % durasi observasi
N=0:floor(Fs*L); % jumlah sample selama durasi observasi
f0 = 0.25;
omega = 2*pi*f0*Ts;
f_0 = f0*Ts; %f'0
x=cos(omega*N); % 0.25 Hz cosine signal 
hold on
grid on
xlabel ('n')
ylabel ('x[n]')
title ("Sampling of 0.25 Hz Cosine Signal (N = " + max(N) + " samples)")
%plot (N,x,'DisplayName','Approximated Signal')
stem (N,x,'o','DisplayName','Discrete Signal')
legend
hold off
end
