clc;
clear all;

l=3*10^8/900*10^6;
Pt=10;
Gt=10^(5/10);
Gr=10^(3/10);

D=[];
Pr=[];
Pl=[]
for d=100:100:2000
    D=[D d]; 
    d2=d*d;
    pr=0.04439/d2;
    Pr = [Pr pr];
    pl=Pt/pr;
    Pl=[Pl pl]; 
    pr=0;
    pl=0;
end

subplot(2,1,1)
plot(D,Pr,'o-','LineWidth',2);
xlabel 'Distance';
ylabel 'Received Power';
title 'Distance vs Received Power (21BEC1411)';
grid on


subplot(2,1,2)
plot(D,Pl,'o-','LineWidth',2);
xlabel 'Distance';
ylabel 'Path Loss';
title 'Distance vs Path Loss (21BEC1411)';
grid on