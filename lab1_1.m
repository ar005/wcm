clc
clear all
close all

B=input('Enter total bandwidth: ');

    N=[3, 4, 7, 9, 12];
    tot_area=2000;
    cell_area=2;
    ch_bw=20*1000:40*1000:200*1000;

    cap =[];

for i=1:length(N);

    no_of_channel=(B/ch_bw(i));
    no_of_cell=tot_area/2;
    no_of_clusters=no_of_cell/N(i);
    capacity=(no_of_channel)*(no_of_clusters)
    cap = [cap,capacity];
    
end

cap
ch_bw
    plot(cap,ch_bw)
    xlabel('Channel BW','O-','LineWidth',2);
    ylabel('Capacity');
    title('Channel BW Vs. Capacity (21BEC1411)');
    hold on;