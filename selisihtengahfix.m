clear all;
clc;
disp('===========================================');
disp('Differensiasi Numerik Metode Selisih Tengah');
disp('===========================================');
fprintf('\n');
y = input ('Fungsi : ','s');
f = inline (y);
a = input ('Input batas bawah(a) : ');
b = input ('Input batas atas(b) : ');
h = input ('Input nilai h : ');
fprintf('\n');
disp(' i        x          f(x)       f(x+h)    f(x-h)    f1(x)tengah');
x = a;
iterasi = 0;
while (x <= b+h)
    x1 = x+h;
    x2 = x-h;
    
    %fungsi
    fx = f(x);
    fx1 = f(x1);
    fx2 = f(x2);
 
    %diferensiasi numerik
    f1_tengah = (fx1-fx2)/(2*h);
 
    iterasi = iterasi+1;
    fprintf('%3g %10.3f %10.3f %10.3f %10.3f %10.3f\n', iterasi,x,fx,fx1,fx2,f1_tengah);
    x=x1;
end
