clc;
clear all;
close all;

% Hata Model Parameters

f=700*10^6; % Frequency in Hz
wl=(3*10^8)/f; % Height of receiver in meters
d=5000;
ht=10:10:100;
hr=1.5;

% Calculate path loss for different heights and distances
A=(((1.1*log10(f))-0.7)*hr)-(1.56*log10(f))-0.8;
B=(3.2*(log10(11.75*hr))^2)-4.97;
pl_urban_small=69.55+(29.16*(log10(f)))-(13.82.*(log10(ht)))-A+((44.9-(6.55.*log10(ht))).*log10(d));
pl_urban_large=69.55+(29.16*(log10(f)))-(13.82.*(log10(ht)))-B+((44.9-(6.55.*log10(ht))).*log10(d));
pl_urban_small=10.^(pl_urban_small/10);
pl_urban_large=10.^(pl_urban_large/10);

% Plotting
% figure;
% plot(ht,pl_urban_smol);
% hold on;
% plot(ht,pl_urban_large);
figure;
plot(ht, pl_urban_small, 'b-', 'LineWidth', 1);
hold on;
plot(ht, pl_urban_large, 'r-', 'LineWidth', 1);

xlabel('Transmitting Antenna Height (m)');
ylabel('Path Loss (dB)');
title('Hata Model-Transmitting Antenna Height vs.Path Loss(Urban)');
legend('Location', 'Best');