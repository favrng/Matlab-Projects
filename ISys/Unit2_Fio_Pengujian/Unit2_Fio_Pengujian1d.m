%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.1:20; %t dari 0 hingga 20, dengan increment 0,01
f=0.1; %memberi nilai f = 0,1
x1=10*cos(2*pi*f*t); %isyarat x1(t)
x2=6*cos(2*pi*2*f*t); %isyarat x2(t)
x3=4*cos(2*pi*3*f*t); %isyarat x3(t)
x4=cos(2*pi*4*f*t); %isyarat x4(t)
x=x1+x2+x3+x4; %isyarat x(t)
y1 = 15+x;
y2 = -5+x;
figure (1) %membuka figure 1
hold on
plot (t,y1) %plot grafik y1(t) terhadap t
plot (t,y2) %plot grafik y2(t) terhadap t
hold off
title ('Grafik Isyarat y1(t) dan y2(t)') %memberi judul plot
xlabel ('t') %memberi label absis
ylabel ('y(t)') %memberi label ordinat
grid on %menampilkan garis bantu (grid)
legend ({'y1(t)', 'y2(t)'}, 'Location','northeast');
%memberi keterangan grafik di timur laut figure 1
mean_y1 = mean(y1); %menghitung rata-rata y1(t)
mean_y2 = mean(y2); %menghitung rata-rata y2(t)
mean_x = mean(x); %menghitung rata-rata y3(t)
disp(['Rata-rata y1(t) adalah ', num2str(mean_y1)]);
disp(['Rata-rata y2(t) adalah ', num2str(mean_y2)]);
disp(['Rata-rata x(t) adalah ', num2str(mean_x)]);
%ketiga perintah disp di atas berfungsi untuk menampilkan tulisan yang
%berupa string.
%mean_y1, mean_y2, dan mean_x dikonversi menjadi string dengan num2str.