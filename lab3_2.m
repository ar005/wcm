clc;
clear all;
close all;

f=900*10^6;
wl=(3*10^8)/f;
tp=10;
gt=10^(5/10);
gr=10^(3/10);
ht=40;
hr=3;
l=1;

rp=[];
pl=[];

D=100:100:2000;
for d=100:100:2000
    rp1=(tp*gt*gr*(ht^2)*(hr^2))/(d^4);
    pl1=tp/rp1;
    rp=[rp rp1];
    pl=[pl pl1];
end

figure
plot(rp,D,'b-', 'LineWidth', 2);
xlabel("recieved power");
ylabel("distance");
title 'Distance vs Received Power (21BEC1411)';
figure
plot(pl,D,'r-', 'LineWidth', 2);
xlabel("path loss");
ylabel("distance");
title 'Distance vs Path Loss (21BEC1411)';