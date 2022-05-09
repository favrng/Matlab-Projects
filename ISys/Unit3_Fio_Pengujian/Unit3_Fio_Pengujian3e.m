clc
clear
clf

%% Code by Gabriel, Electrical Engineering Department
%% Gadjah Mada University
%% Example of The Effect of Sampling Frequency in Time Domain
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fs=0.1:0.1:10; % sampling frequency variation
L=20; % duration of observation
for i=1:length(Fs) % iteration for sampling frequency variation
Ts=1/Fs(i); % sampling period
N=floor(Fs(i)*L); % total samples
t=0:Ts:(L-Ts); % time vector
x=cos(2*pi*0.25*t); % input your signal here
figure(1)
plot(t,x)
grid on
title('Sampling of 0.25 Hz cosine signal (Fs = 2 Hz)')
xlabel('nTs')
ylabel('x(nTs)')
pause(1) % can be varied for better observation
end