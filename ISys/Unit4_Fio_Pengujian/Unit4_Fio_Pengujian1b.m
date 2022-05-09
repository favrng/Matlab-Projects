clc;
clear;
clf;

% Fiorella Averina Gunawan
% 19/443579/TK/48775

%% Step 1
L=100; % durasi observasi
sigma=(-10:0.1:(10-0.1));
omega=(-L/2:L/2-1)*(2*pi*0.1);

%% Step 2
for i = 1:100
    for j = 1:200
        laplace(i,j)=abs((2*pi)/((sigma(j)+1j*omega(i))^2 + (2*pi)^2));
    end
end
[row_max,col_max] = max(laplace(:)); %Nilai maksimum dari baris dan kolom
[row,col] = ind2sub(size(laplace),col_max) %Indeks baris dan kolom ke berapa terdapat nilai maks
max=laplace(41,101)

