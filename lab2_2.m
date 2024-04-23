llclc 
clear all
close all
speed = 60*5/18;
R = 100:100:1000;
T = 3*60;
u = 1/T;
n = (2.*speed)./(pi*R);

ans = n./(n+u);

plot(ans,R,'o-','LineWidth',2);
xlabel("Handover Probability");
ylabel("Radius");
title("Handover probability vs Radius")