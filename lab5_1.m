clc 
clear all 
close all

% Given Parameters
d0 = 500;
f = 900*10^6;
n = 3;
c = 3*10^8;
lambda = c/f;
d=1000:2000:20000;
n=2;   % for free space

%Calculation 
pl_d0 = 32.44 + 20*log10(d0/1000)+20*log10(f/(10^6));
pl = pl_d0+(10.*n.*log10(d./d0));

r_no = [];
pl_bar_arr = [];
for i=1:10
    ran_num = randn; 
    r_no = [r_no,ran_num];
end

for i=1:10
    pl_bar_arr = [pl_bar_arr,pl(i)-r_no(i)];
end


plot(pl_bar_arr,d,'r-','LineWidth',1);
xlabel('Log Normal Shadowing Path loss');
ylabel('Distance');
title('Log Normal Shadowing Path loss vs Distance');

