disp('METODE REGULA FALSI oleh David Kevin');
disp('______');
g = input ('Masukkan Fungsi f(x): ', 's');
f = inline(g,'x');
e = input('eror: ');
a = input('a: ');
b = input('b: ');
i=1;
x= (a*fb-b*fa)/(fb-fa);
fa = f(a); fb = f(b);
fx=f(x);

fprintf('i\t a\t\t\t b\t\t\t x\t\t\t f(a)\t\t f(b)\t\t f(x)\n\n')
while (abs(fx)>e)
    
    fprintf('%d\t %.5f\t %.5f\t %.5f\t %.5f\t %.5f\t %.5f',i,a,b,x,fa,fb,fx)
    if fa*fx < 0
        b=x;
    else
        a=x;
    end
     i=i+1;
    fa = f(a); fb = f(b);
    x= (a*fb-b*fa)/ (fb-fa)
    fx = f(x);
end
fprintf('\nakar: %g\n', x)