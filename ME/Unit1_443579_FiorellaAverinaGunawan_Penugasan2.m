%Praktikum ME, Unit 1
%Fiorella Averina Gunawan 19/443579/TK/48775
%Penugasan 2, Spesifikasi D
clc %membersihkan command window
clear %membersihkan workspace
i = 0; %untuk iterasi subplot
f = 3*10^9; %frekuensi operasi antena (Hz)
c = 3*10^8; %kecepatan gelombang di ruang hampa (m/s)
lambda = c/f; %panjang gelombang (m)
k = (2*pi)/lambda; %bilangan gelombang
eta = 377; %impedansi ruang bebas (ohm)
I0 = 1; %arus maksimum yang masuk antena (A)
r = 10*lambda; %radius spherical coordinate
theta = 0:0.01:2*pi; %sudut elevasi (derajat)
l = 1.5*lambda; %panjang antena dipole (m)
d = lambda/4; %jarak antar elemen array antena (m)
beta = pi/2; %fase eksitasi
psi = k*d*cos(theta) + beta;
phi = 0:0.01:2*pi; %sudut azimuth
for N = 60:20:100; %jumlah array yang berbeda
    i = i+1; %iterasi
    %persamaan pola radiasi antena Etheta:
    Etheta = (1i*eta*I0*exp(-1i*k*r)/2*pi*r).*((cos(((k*l)/2).*cos(theta))-cos((k*l)/2))./sin(theta));
    %persamaan pola radiasi linear array antena:
    AF = 1/N.*(sin((N/2).*psi)./sin((1/2).*psi));
    Et = Etheta.*AF; %pola radiasi gabungan
    rt = abs(Et);
    rt_db = 10*log10(rt);
    Rt = rt_db;
    %Plot 2D
    figure (1)
    subplot (1,3,i)
    polarplot (theta, Rt); %membuat plot Rt terhadap theta dalam koordinat polar
    title(["2D radiation pattern", "of dipole antenna", ['with N = ', num2str(N)]]);
    %Plot 3D
    Rt_norm = Rt - min(Rt); %normalisasi
    Rt_norm (1) = 0;
    %pembuatan matriks Rt_norm, theta, dan phi untuk span koordinat 3D:
    Rt_norm_matrix = repmat (Rt_norm',1,numel(Rt_norm));
    theta_matrix = repmat (theta',1,numel(theta));
    phi_matrix = repmat (phi,numel(phi),1);
    %transformasi koordinat:
    x = Rt_norm_matrix.*cos(theta_matrix).*cos(phi_matrix);
    y = Rt_norm_matrix.*cos(theta_matrix).*sin(phi_matrix);
    z = Rt_norm_matrix.*sin(theta_matrix);
    figure (2)
    subplot (2,2,i)
    surf(x,y,z, 'Edgecolor', 'none'); %membuat plot 3D yang dihilangkan warnanya
    colormap ([summer;flipud(summer)]); %memberi warna dari array map
    title(["3D radiation pattern", "of dipole antenna", ['with N = ', num2str(N)]]);
    colorbar; %menampilkan panduan/indikator warna
end