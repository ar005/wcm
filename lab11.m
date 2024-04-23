function y5=E_papr_clipConv()
clc;
clear all;
close all;
for L=1:0.1:1.5
    N = 1024;
    M=16;
    r = floor(M*rand(N,1));                                                                        %SGenerating the rendom data for transmission
    a=qammod (r,M);                                                                                 %GQAM modulating the data.

    LN = floor(L*N);
    at=a';
    aa=[at(1:N) zeros(1,LN-N)]';

    x =ifft(aa);                                                                                               % Generating OFDM signal and calculating PAPR
    x_mag=abs (x);

    papr=max(x_mag.^2)/mean(x_mag.^2);

    figure;
    subplot(3,1,1),stem(x_mag),title('Normal OFDM signal');
    xlim([0 LN]);
    x_max=0.7*max(x_mag);

    for j=1:LN                                                                                              %Clipping the signals above threshold(here 70$ of original value)
        if(x_mag(j,1)>x_max)
            x_mag1 (j,1)=x_max;
        else
            x_mag1 (j,1)=x_mag(j,1);
        end;
    end;

    subplot(3,1,2),stem(x_mag1),title('Clipped OFDM signal');
    xlim([0 LN]);
    h=[ones(1,N) zeros(1,LN-N)]';                                                                %Filtering the clipped signal
    x_mag1=conv(x_mag1,h);
    subplot(3,1,3),stem(x_mag1),title('clipped and Filtered OFDM signal');
    xlim([0 2*LN]);                                                                                         %Calculating PAPR of Clipped and Filtered signal

    papr1=max (x_mag1.^2)/mean(x_mag1.^2);

    disp("PAPR of original OFDM");
    disp (papr);
    disp('PAPR of clipped OFDM');
    disp(papr1);
end