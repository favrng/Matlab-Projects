%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.1:20; %t dari 0 hingga 20, dengan increment 0,01
f=0.1; %memberi nilai f = 0,1
x1=cos(2*pi*f*t); %isyarat x1(t)
x2=4*cos(2*pi*2*f*t); %isyarat x2(t)
x3=6*cos(2*pi*3*f*t); %isyarat x3(t)
x4=10*cos(2*pi*4*f*t); %isyarat x4(t)
x=x1+x2+x3+x4; %isyarat x(t) sebagai penjumlahan isyarat lainnya
figure (1) %membuka figure 1
plot (t,x) %plot grafik x terhadap t
title ('Grafik Isyarat x (t)') %memberi judul plot
xlabel ('t') %memberi label absis
ylabel ('x(t)') %memberi label ordinat
grid on %menampilkan garis bantu (grid)