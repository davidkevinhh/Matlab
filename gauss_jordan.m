clear all;
clc;
format rat
disp('__________________________________');
disp('METODE GAUSS JORDAN by David Kevin');
disp('**********************************');
disp('__________________________________');
A=input('Input matriks augmentasi\n = ');
[r,c]=size(A) 
 
disp('Forward phase')
 
for i=1:r
    f=0;
    l=i;
    if A(i,i) ~= 1
        for m=i+1:r
            if A(m,i) == 1
                 B=A(i,:);
                 A(i,:)=A(m,:);
                 fprintf ('Swaping R%.f with R%.f.\n',m,i)
                 A(m,:)=B;
                 disp(A)
                 break;
                 end
        end
    end
 
    if A(i,i)== 0
        for k=i+1:r
            if A(k,i)~= 0
                B=A(i,:);
                A(i,:)=A(k,:);
                fprintf ('Swaping R%.f with R%.f.\n',k,i)
                 A(k,:)= B;
                 disp(A);
                d=A(i,i);
                f=1;
            break;
            end
        end
        if f == 0
            for l=i+1:c-1
                if A(i,l) ~= 0
                    d=A(i,l);
                    f=1;
                break;
                end
            end
        end
    else
        d=A(i,i);
        f=1;
    end
   if f ~= 0
        if d~=1
            fprintf('R%.f / (%s) \n',i,rats(d))
            A(i,:)=A(i,:)/d ;
            disp(A);
        end
        for j=i+1:r
            if A(j,l)== 0
                continue;
            end
            fprintf('R%.f-  (%s)*R%.f \n',j,rats(A(j,l)),i)
            A(j,:)=A(j,:) - A(j,l)*A(i,:);
            disp(A)
        end
   end
end
disp('')
disp('Reverse phase')
fg=0;
for i=r:-1:1
    f=0;
     l=i;
     if A(i,i)== 0
        for l=i+1:c-1
            if A(i,l) ~= 0
                d=A(i,l);
                  f=1;
                break;
            end
        end
     else
        d=A(i,i);
        f=1;
     end
if f ~= 0
        for j=i-1:-1:1
            if A(j,i)== 0
                continue;
            end
            fprintf('R%.f-  (%s)*R%.f \n',j,rats(A(j,i)),i)
            A(j,:)=A(j,:) - A(j,l)*A(i,:) ;
            disp(A);
            fg=1;
        end
   end
   if ( (f==0 && A(i,c)) == 1 || fg==0 && i==1)
       disp('No solution')   
       break;
   end
 
end
