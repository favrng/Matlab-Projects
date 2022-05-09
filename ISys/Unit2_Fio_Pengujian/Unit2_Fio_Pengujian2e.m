%% Code by Fiorella Averina Gunawan 19/443579/TK/48775, Electrical Engineering Department
%% Gadjah Mada University
h = eye(8);
for i = 1:8
    for j =i+1:8
            Hdot = dot(h(i),h(j));
            if Hdot ==0
                disp (['Vektor h', num2str(i), ' dengan vektor h', num2str(j), ' saling ortogonal']);
            else
                disp (['Vektor h', num2str(i), ' dengan vektor h', num2str(j), ' tidak saling ortogonal']);
            end
    end
end
%isyarat basis yang dipakai pengujian 2b dan 2d adalah cos (2*pi*f*t)
%isyarat basis yang dipakai pengujian 2c adalah sin (2*pi*f*t)
for i=1:8 %8 kali iterasi
    y=cos(2*pi*0.05*i*t); %isyarat y(t)
    x=sin(2*pi*0.05*i*t);
    a(i)=dot(x(i),y(i));
    disp (['Hasil dot product x', num2str(i), ' dan y', num2str(i), ' adalah ', num2str(a(i))]);
end

   