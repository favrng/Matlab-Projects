%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
x = [3 0 5 7 0 1 6 0]; %isyarat x
h1 = [1 0 0 0 0 0 0 0]; %isyarat h1
h2 = [0 1 0 0 0 0 0 0]; %isyarat h2
h3 = [0 0 1 0 0 0 0 0]; %isyarat h3
h4 = [0 0 0 1 0 0 0 0]; %isyarat h4
h5 = [0 0 0 0 1 0 0 0]; %isyarat h5
h6 = [0 0 0 0 0 1 0 0]; %isyarat h6
h7 = [0 0 0 0 0 0 1 0]; %isyarat h7
h8 = [0 0 0 0 0 0 0 1]; %isyarat h8
%perintah berikut adalah perintah dot product
y1 = dot(x,h1);
y2 = dot(x,h2);
y3 = dot(x,h3);
y4 = dot(x,h4);
y5 = dot(x,h5);
y6 = dot(x,h6);
y7 = dot(x,h7);
y8 = dot (x,h8);
%perintah display berikut untuk menampilkan y dalam bentuk string
disp(['y1 = ', num2str(y1)]);
disp(['y2 = ', num2str(y2)]);
disp(['y3 = ', num2str(y3)]);
disp(['y4 = ', num2str(y4)]);
disp(['y5 = ', num2str(y5)]);
disp(['y6 = ', num2str(y6)]);
disp(['y7 = ', num2str(y7)]);
disp(['y8 = ', num2str(y8)]);
