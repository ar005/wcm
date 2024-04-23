clc;
clear all;
close all;
% Given Parameters

f=900*10^6; % Frequency in Hz
wl=(3*10^8)/f;
tp=10;
gt=1;
gr=1;
ht=30; % Height of transmitter in meters
hr=1.5; % Height of receiver in meters
l=1;
rp=[];
pl=[];
d=1000:1000:10000;


rp=(tp*gt*gr*(ht^2)*(hr^2))./(d.^4);
pl=tp./rp;


% calculating the path loss

A=(((1.1*log10(f))-0.7)*hr)-(1.56*log10(f))-0.8;
B=(3.2*(log10(11.75*hr))^2)-4.97;
pl_urban_small=69.55+(29.16*(log10(f)))-(13.82*(log10(ht)))-A+((44.9-(6.55*log10(ht))).*log10(d));
pl_urban_large=69.55+(29.16*(log10(f)))-(13.82*(log10(ht)))-B+((44.9-(6.55*log10(ht))).*log10(d));
pl_urban_small=10.^(pl_urban_small/10);
pl_urban_large=10.^(pl_urban_large/10);
% figure;
% plot(pl_urban_small,d);
% hold on
% plot(pl_urban_large,d);


% Plotting
figure;
plot(pl_urban_small, d, 'b-', 'LineWidth', 2, 'DisplayName', sprintf('Distance %dkm'));
hold on;
plot(pl_urban_large, d, 'g-', 'LineWidth', 2, 'DisplayName', sprintf('Distance %dkm'));

xlabel('Path loss');
ylabel('Distance');
title('Path Loss Comparison - Two-ray vs. Hata Models (Urban)(21BEC1411)');
legend('Location', 'Best');
grid on;