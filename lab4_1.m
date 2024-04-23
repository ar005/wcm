clc;
clear all;
close all;
fc=input('Enter frequency of operation: ');
hte=30/1000;
hre=1.5/1000;
dist=1:2:20;
urban_med=69.55+26.16*log10(fc)-13.82*log10(hte)-((1.1*log10(fc)-0.7)*hre-(1.56*log10(fc)-0.8))+ (44.9-6.55*log10(hte).*log10(dist));
urban_large=69.55+26.16*log10(fc)-13.82*log10(hte)-3.2*(log10(11.75*hre)^2)-4.97+ (44.9-6.55*log10(hte).*log10(dist));
suburban_med=urban_med- 2*((log10(fc/28))^2)-5.4;
suburban_large=urban_large- 2*((log10(fc/28))^2)-5.4;
rural_med=urban_med-4.87*(log10(fc)^2)-18.33*log10(fc)-40.98;
rural_large=urban_large-4.87*(log10(fc)^2)-18.33*log10(fc)-40.98;
plot(dist, urban_med);
hold on;
plot(dist, urban_large);
hold on;
plot(dist, suburban_large);
hold on;
plot(dist, suburban_med);
hold on;
plot(dist, rural_med);
hold on;
plot(dist, rural_large,'O-','LineWidth',2);
xlabel("Distance (km)");
ylabel("Path loss (dB)");
title("For frequency fc= 700 MHz (21BEC1411)");
legend('medium city', 'large city', 'large suburban','medium suburban','medium rural', 'large rural')

