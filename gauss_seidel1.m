clc;
clear all;
disp('              METODE GAUSS SEIDEL                 ');
disp('==================================================');
A=input('masukkan matriks A yang akan diproses(beri []): ');
B1=input('masukkan vektor B yang akan diproses(beri []) : ');
Y=input('masukkan hampiran awal X0 (beri []) : ');
delta=input('masukkan toleransi              : ');
max1=input('masukkan iterasi maksimal        : ');
B=B1';
N=length(B);
P=Y';
X1=Y';
iter=0;
fprintf('\niterasi       a          b         c          d          e \n');
for k=1:max1
    iter=iter+1;
    for j=1:N
        if j==1
            X(1)=(B(1)-A(1,2:N)*P(2:N))/A(1,1);
        elseif j==N
            X(N)=(B(N)-A(N,1:N-1)*(X(1:N-1))')/A(N,N);
        else
            X(j)=(B(j)-A(j,1:j-1)*X(1:j-1)'-A(j,j+1:N)*P(j+1:N))/A(j,j);
        end
    end
    galat=max(abs((X'-P)./X'));
    P=X';
    if(galat<delta)
        break
    end
    fprintf('%11.0f %10.3f %10.3f %10.3f %10.3f %10.3f\n',[iter;X(1);X(2);X(3);X(4);X(5)])
end
