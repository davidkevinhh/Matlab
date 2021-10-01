disp('METODE BISEKSI oleh David Kevin');
disp('______');
g = input ('Input Fungsi f(x): ', 's');
f = inline(g,'x');
e = input('galat: ');
a = input('a: ');
b = input('b: ');
n = input('iterasi maks: ');
i=1;

if f(a)*f(b)>0
    disp('Tidak ada akar');
else
    fprintf('i\t a\t\t\t b\t\t\t x\t\t\t f(a)\t\t\t f(x)\n\n')
    while(abs(a-b)>e && i<=n)
        x = (a+b)/2;
        fa=f(a); fx=f(x);
        fprintf('%d\t %.5f\t %.5f\t %.5f\t %.5f\t %.5f\n\n', i, a, b, x, fa, fx)
        if fa*fx < 0 
            b=x;
        else a=x;
        end
        i=i+1;
    end
    fprintf('\nakar dari fungsi : %g\n', x)
end
