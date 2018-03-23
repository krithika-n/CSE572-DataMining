clear all; close all;
Fs = 15;
T = 1/Fs;
L = 3000;
t = (0:L-1)*T;
T = readtable(strcat('/Users/Anusha/Desktop/DMPROJECT/DataMining-master/MergedHearing.csv'));
data = table2array(T);
M = [];
for i = 0:8
    start = i*5;
    disp(start);
    M = horzcat(M, mean(data(:,start+1:start+5),2));
end
for i = 9:34:5100
    plot(t(1:9),M(i,:));hold on;
end       
xlabel('time');
ylabel('mean');
title('Mean-Hearing');
