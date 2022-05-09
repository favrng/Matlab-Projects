clc
clear

%% Fiorella Averina Gunawan
%% 19/443579/TK/48775

Area (0)
Area (2)
Area (3)
Area (4)
Area (5)

function Area(n)
Fs=10^n;
Ts=1/Fs; % sampling period
L=5; % durasi observasi
N=floor(Fs*L); % jumlah sample selama durasi observasi
t=0:Ts:(L-Ts); % time vector (points of time)
x=cos(2*pi*0.25*t); % 0.25 Hz cosine signal 
Length_x = length (x);
Area=sum(x)./Fs; % proses jumlahan selama durasi observasi
disp ("Pada Fs = 10^" + n + ",")
disp ("N = " + N + ", Length x = " + Length_x + ", Area = " + Area)
end