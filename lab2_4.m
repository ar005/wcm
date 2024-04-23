clc;
clear all;
close all;
n=3;
N=[3,7,12];
k=[6,1,2];
for i=1:length(N)
     SIR1(i)=((sqrt(3*N(i))).^n)/k(1);
end
for i=1:length(N)
      SIR2(i)=((sqrt(3*N(i))).^n)/k(2);
end
for i=1:length(N)
     SIR3(i)=((sqrt(3*N(i))).^n)/k(3);
end

mltable=table(N',SIR1',SIR2',SIR3','VariableNames',{'N','No_Sectorization','Sectorization_60_degree','Sectorization_120_degree'});
display(mltable)