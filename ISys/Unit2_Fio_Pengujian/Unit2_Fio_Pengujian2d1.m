%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.01:19.99; %t dari 0 hingga 20, dengan increment 0,01
x1=10*cos(2*pi*0.1*t); %isyarat x1(t)
x2=6*cos(2*pi*2*0.1*t); %isyarat x2(t)
x3=4*cos(2*pi*3*0.1*t); %isyarat x3(t)
x4=cos(2*pi*4*0.1*t); %isyarat x4(t)
x=x1+x2+x3+x4; %isyarat x(t)
y1=15+x;
f=0;
y=cos(2*pi*f*t); %isyarat y(t)
a=dot(y1,y);
disp (['Nilai a adalah ', num2str(a)]);
