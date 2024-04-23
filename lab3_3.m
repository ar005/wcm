clc;
clear all;
close all;

%l=3*10^8/v*10^6;
Pt=10;
Gt=10^(5/10);
Gr=10^(3/10);
d=100;

%Pr=(Pt*Gt*Gr*l^2)/(16*pi^2*d^2) c/f
V=[];
Pr=[];
Pl=[]
for v=850:100:2250
    l=300/v;
    V=[V v]; 
    pr=0.000039*l*l;
    Pr = [Pr pr];
    pl=Pt/pr;
    Pl=[Pl pl]; 
    pr=0;
    pl=0;
end
V
Pr
Pl
subplot(2,1,1)
plot(V,Pr,'o-','LineWidth',2);
xlabel 'Frequency';
ylabel 'Received Power';
title 'Distance vs Received Power (21BEC1411)';
grid on

subplot(2,1,2)
plot(V,Pl,'o-','LineWidth',2);
xlabel 'Frequency';
ylabel 'Path Loss';
title 'Distance vs Path Loss (21BEC1411)';
grid on