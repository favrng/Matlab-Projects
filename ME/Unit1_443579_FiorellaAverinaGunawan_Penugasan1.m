%Praktikum ME, Unit 1
%Fiorella Averina Gunawan 19/443579/TK/48775
%Penugasan 1
clc %membersihkan command window
clear %membersihkan workspace
%Plot 2D untuk l = 0.5*lambda
i = 0; %untuk iterasi subplot
f = 3*10^9; %frekuensi operasi antena (Hz)
c = 3*10^8; %kecepatan gelombang di ruang hampa (m/s)
lambda = c/f; %panjang gelombang (m)
k = (2*pi)/lambda; %bilangan gelombang
eta = 377; %impedansi ruang bebas (ohm)
I0 = 1; %arus maksimum yang masuk antena (A)
r = 10*lambda; %radius spherical coordinate
theta = 0:0.01:2*pi; %sudut elevasi (derajat)
l = 0.5*lambda; %panjang antena dipole (m)
%persamaan pola radiasi Etheta:
Etheta = (1i*eta*I0*exp(-1i*k*r)/2*pi*r).*((cos(((k*l)/2).*cos(theta))-cos((k*l)/2))./sin(theta));
rtheta = abs(Etheta);
rtheta_db = 10*log10(rtheta);
Rtheta = rtheta_db;
figure (1)
polarplot (theta, Rtheta); %membuat plot fungsi Rtheta sebagai fungsi theta dalam koordinat polar
title(["2D radiation pattern", "of dipole antenna", "with l = 0.5 \lambda"]);
legend ('Normalized power pattern (dB)');
%Plot 3D untuk l = 0.5*lambda
phi = 0:0.01:2*pi; %sudut azimuth (derajat)
Rtheta_norm = Rtheta - min(Rtheta); %normalisasi
Rtheta_norm (1) = 0;
%pembuatan matriks Rt_norm, theta, dan phi untuk span koordinat 3D:
Rtheta_norm_matrix = repmat (Rtheta_norm',1,numel(Rtheta_norm));
%mengulang secara horizontal vektor Rtheta_norm yang di-transpose menjadi column vector, sebanyak jumlah elemen(Rtheta_norm)
theta_matrix = repmat (theta',1,numel(theta)); 
%seperti Rtheta_norm_matrix, namun yang diulang adalah vektor theta
phi_matrix = repmat (phi,numel(phi),1);
%seperti Rtheta_norm_matrix, namun vektor phi tidak di-transpose (tetap row vector), dan diulang secara vertikal
%transformasi koordinat:
x = Rtheta_norm_matrix.*cos(theta_matrix).*cos(phi_matrix);
y = Rtheta_norm_matrix.*cos(theta_matrix).*sin(phi_matrix);
z = Rtheta_norm_matrix.*sin(theta_matrix);
figure (2)
surf(x,y,z, 'Edgecolor', 'none'); %plot 3D, dengan warna yang dihilangkan
colormap ([summer;flipud(summer)]); %warna plot 3D dibuat dalam bentuk array
title(["3D radiation pattern", "of dipole antenna", "with l = 0.5 \lambda"]);
colorbar; %menampilkan panduan/indikator warna
%Plot 2D dan 3D untuk l yang berubah (spesifikasi D)
for multiplier = 5.1:0.3:6 %karena l = multiplier*lambda
    li = multiplier*lambda;
    i = i+1;
    %proses di bawah sama dengan proses untuk membuat figure 1 dan 2
    Etheta_i = (1i*eta*I0*exp(-1i*k*r)/2*pi*r)*((cos(((k*li)/2).*cos(theta))-cos((k*li)/2))./sin(theta));
    rtheta_i = abs(Etheta_i);
    rtheta_i_db = 10*log10(rtheta_i);
    Rtheta_i = rtheta_i_db;
    Rtheta_i_norm = Rtheta_i - min(Rtheta_i);
    Rtheta_i_norm (1) = 0;
    Rtheta_i_norm_matrix = repmat (Rtheta_i_norm',1,numel(Rtheta_i_norm));
    x_i = Rtheta_i_norm_matrix.*cos(theta_matrix).*cos(phi_matrix);
    y_i = Rtheta_i_norm_matrix.*cos(theta_matrix).*sin(phi_matrix);
    z_i = Rtheta_i_norm_matrix.*sin(theta_matrix);
    %Plot 2D
    figure (3)
    subplot (2,2,i)
    polarplot (theta, Rtheta_i);
    title(["2D radiation pattern", "of dipole antenna", ['with l = ', num2str(multiplier), '\lambda']]);
    %Plot 3D
    figure (4)
    subplot (2,2,i)
    surf(x_i,y_i,z_i, 'Edgecolor', 'none');
    colormap ([summer;flipud(summer)]);
    title(["3D radiation pattern", "of dipole antenna", ['with l = ', num2str(multiplier), '\lambda']]);
    colorbar;
end