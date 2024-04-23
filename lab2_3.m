clc 
clear all 
close all 

D = 500:100:600;
R = 5000;
n = [2,4];
N = [5,7];

q = sqrt(3.*N);

ans = (q.^n)./6;

plot(D,ans,'r-','LineWidth',2);
xlabel("Distance");
ylabel("SIR");
title("Distance between co channel cells vs SIR")