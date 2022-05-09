%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.1:20; %t dari 0 hingga 20, dengan increment 0,01
f=0.1; %memberi nilai f = 0,1
x1=10*cos(2*pi*f*t); %isyarat x1(t)
x2=6*cos(2*pi*2*f*t); %isyarat x2(t)
x3=4*cos(2*pi*3*f*t); %isyarat x3(t)
x4=cos(2*pi*4*f*t); %isyarat x4(t)
x=x1+x2+x3+x4; %isyarat x(t)
DC = mean(x);
y1 = 15+x;
y=cos(2*pi*0*t); %isyarat y(t)
a0 = (1/10)*dot(y1,y);
disp (['Nilai a0 adalah ', num2str(a(i))]);
for i=1:8 %8 kali iterasi
    f=0.05*i;
    y=cos(2*pi*f*t); %isyarat y(t)
    a(i)=(2/10)*dot(y1,y); %karena periode y1(t) adalah 10
    disp (['Nilai a', num2str(i), ' adalah ', num2str(a(i))]);
end
figure (1) %membuka figure 1
hold on
plot (t, DC)
plot (t, x1)
plot (t, x2)
plot (t, x3)
plot (t, x4)
plot (t, y1)
plot (t,y1) 
hold off
title ('Kombinasi Linear Isyarat y1(t)') %memberi judul plot
xlabel ('Waktu (s)') %memberi label absis
ylabel ('Amplitudo') %memberi label ordinat
grid on %menampilkan garis bantu (grid)
legend ({'DC', 'x1(t)', 'x2(t)', 'x3(t)', 'x4(t)','y1(t)'}, 'Location','northeast');
%memberi keterangan grafik di timur laut figure 1