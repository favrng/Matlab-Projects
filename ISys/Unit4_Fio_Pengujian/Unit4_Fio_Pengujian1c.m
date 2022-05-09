clc;
clear;
clf;

% Fiorella Averina Gunawan
% 19/443579/TK/48775

%% Step 1
L=100; % durasi observasi
sigma=0;
omega=(-L/2:L/2-1)*(2*pi*0.1);

%% Step 2
for j = 1:100
    laplace(j)=abs((2*pi)/(1j*omega(j))^2+(2*pi)^2));
end
[row_max,col_max] = max(laplace(:)); %Nilai maksimum dari baris dan kolom
[row,col] = ind2sub(size(laplace),col_max) %Indeks baris dan kolom ke berapa terdapat nilai maks


