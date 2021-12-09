% Program penerjun payung dengan metode Euler
clc;
clear all;
disp('  PROGRAM TERJUN PAYUUNG ');
disp('BY: David Kevin Hutabarat');
disp('      NIM 190803100      ');
disp('_________________________');
g=9.81;
m=input('Input nilai m(kg)         :  ');
cd=input('Input nilai cd(kg/s)     :  ');
tend=input('Input batas maksimum   :  ');
dt=input('Input toleransi error    :  ');
t0=0;  
vi=0;
t=t0:dt:tend;
%% analitik
vel= sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t);
%% numerik
n =(tend-t0)/dt;
ti=t0;
v= vi;
V(1)=v;
for i = 1:n
 dv = g-(cd/m)*v*abs(v);
 v = v + dv*dt;
 V(i+1)=v;
end
%% visualisasi
plot(t,vel,t,V,'r.')
grid
xlabel('Waktu (s)')
ylabel('Kecepatan (m/s)')
title('Kecepatan Penerjun Payung')
legend('analitik','numerik',2) 