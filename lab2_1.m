clc 
clear all
close all
speed = 5:5:50;
R = 500;
T = 3*60;
u = 1/T;
n = (2.*(speed.*5./18))./(pi*R);

ans = n./(n+u);

plot(ans,speed,'o-', 'LineWidth', 2);
xlabel('Mobile Speed (km/hr)');
ylabel('Handover Probability');
title('Handover Probability vs Mobile Speed');
grid on;