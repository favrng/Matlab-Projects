%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
B1 = dlmread('B1.csv');
B2 = dlmread('B2.csv');
B3 = dlmread('B3.csv');
B4 = dlmread('B4.csv');
B5 = dlmread('B5.csv');
G1 = dlmread('G1.csv');
G2 = dlmread('G2.csv');
G3 = dlmread('G3.csv');
G4 = dlmread('G4.csv');
G5 = dlmread('G5.csv');
R1 = dlmread('R1.csv');
R2 = dlmread('R2.csv');
R3 = dlmread('R3.csv');
R4 = dlmread('R4.csv');
R5 = dlmread('R5.csv');
Btot = 25*B1 + 20*B2 + 15*B3 + 10*B4 + 5*B5;
B = uint8 (Btot);
Gtot = 25*G1 + 20*G2 + 15*G3 + 10*G4 + 5*G5;
G = uint8(Gtot);
Rtot = 25*R1 + 20*R2 + 15*R3 + 10*R4 + 5*R5;
R = uint8(Rtot);
gambar=cat(3,R,G,B);
imshow (gambar);