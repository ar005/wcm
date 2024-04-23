clc;
clear all;
close all

r =100:200:1000;
N =[3,4,7,9,12];
Total_area = 2100;
cap =[];
BWt = 1800;
BWch = 200;
for i=1:length(N)
    area = 3*sqrt(3)/2*r(i).^2;
    total_cells = Total_area/area;
    cluster = total_cells/N(i);

    channels = BWt/BWch;
    ans = channels*cluster;
    cap=[cap,ans];
end

cap
r

figure

% subplot(2,1,1)
plot(cap,r);
xlabel 'Distance';
ylabel 'SIR';
title 'Distance vs SIR n=2';
grid on

