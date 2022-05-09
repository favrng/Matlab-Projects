%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
t = 0:0.01:19.99; %t dari 0 hingga 20, dengan increment 0,01
x1=10*cos(2*pi*0.1*t); %isyarat x1(t)
x2=6*cos(2*pi*2*0.1*t); %isyarat x2(t)
x3=4*cos(2*pi*3*0.1*t); %isyarat x3(t)
x4=cos(2*pi*4*0.1*t); %isyarat x4(t)
x=x1+x2+x3+x4; %isyarat x(t)
for i=1:8 %8 kali iterasi
    f=0.05*i;
    y=sin(2*pi*f*t); %isyarat y(t)
    a(i)=dot(x,y);
    disp (['Nilai a', num2str(i), ' adalah ', num2str(a(i))]);
end