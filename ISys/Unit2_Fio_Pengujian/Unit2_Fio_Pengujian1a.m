%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.1:20; %t dari 0 hingga 20, dengan increment 0,01
f=0.1; %memberi nilai f = 0,1
x1=cos(2*pi*f*t); %isyarat x1(t)
x2=4*cos(2*pi*2*f*t); %isyarat x2(t)
x3=6*cos(2*pi*3*f*t); %isyarat x3(t)
x4=10*cos(2*pi*4*f*t); %isyarat x4(t)
figure (1) %membuka figure 1
hold on %menyalakan hold untuk mem-plot beberapa isyarat dalam 1 figure
plot (t,x1) %plot grafik x1 terhadap t
plot (t,x2) %plot grafik x2 terhadap t
plot (t,x3) %plot grafik x3 terhadap t
plot (t,x4) %plot grafik x4 terhadap t
hold off %mematikan hold
title ('Grafik Isyarat x1(t), x2(t), x3(t), x4(t)') %memberi judul plot
xlabel ('t') %memberi label absis
ylabel ('x(t)') %memberi label ordinat
grid on %menampilkan garis bantu (grid)
legend ({'x1(t)', 'x2(t)', 'x3(t)', 'x4(t)'}, 'Location','northeast');
%memberi keterangan grafik di timur laut figure 1