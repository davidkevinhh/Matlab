clear all;
clc;
disp('UTS Analisis Numerik by David Kevin');
disp('Mencari SPL dengan Eliminasi Gauss');
disp('===================================');
A = input('input matriks koefisien = ');
b = input('input vektor hasil = ');
Ag = [A,b]
[m,n] = size(Ag);
%pivot Ag(j,j) dan mempertukarkan baris
for j = 1:m-1
for l = 2:m
if Ag(j,j)==0
p = Ag(j,:)
Ag(j,:) = Ag(l,:)
Ag(l,:) = p
end
end
for i = j+1 : m
Ag(i,:) = Ag(i,:)-(Ag(i,j)/Ag(j,j))*Ag(j,:)
end
end
%substitusi mundur
x = zeros(m,1)
for s = m: -1:1
c= 0
for k = 2:m
c = c+Ag(s,k)*x(k)
end
x(s) = (Ag(s,n)-c)/Ag(s,s)
end
disp('Hasil eliminasi gauss'),disp(x)