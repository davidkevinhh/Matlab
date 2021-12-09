clear
clc
disp('Metode Newton-Raphson oleh David Kevin');
disp('======================================');

fx = input('Masukkan fungsi yang ingin dicari akarnya: ','s');
df = inline(input('Masukkan turunannya     : ', 's'))
x0 = input('Masukkan nilai pendekatan awal : ');
N = input('Masukkan jumlah iterasi maksimum: ');
e = input ('Masukkan nilai toleransi error : ');

fx = inline(fx);
err = 100;
i = 0;
disp('i     xi    f(xi)   f''(xi)   error');
while(err >  e & i <= N)
    disp('--------------------------------');
    fprintf('%d     %.3f %.5f %.5f %.3f\n', i, x0, fx(x0), df(x0), err);
    x1 = x0 - fx(x0)/df(x0);
    err = abs(100*(x1-x0)/x1);
    x0 = x1;
    i=i+1;
end
fprintf('\nMaka, akar dari fungsi tersebut: %.8f', x0);