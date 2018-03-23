clear all; close all;
%meanActions("About",33);
%meanActions("And",4);
%meanActions("Can",33);
%meanActions("Cop",33);
%meanActions("Deaf",4);
%meanActions("Decide",30);
%meanActions("Father",2);
%meanActions("Find",4);
%meanActions("GoOut",6);
meanActions("Hearing",9);

function meanActions(action, sensor)
    Fs = 15;
    T = 1/Fs;
    L = 3000;
    t = (0:L-1)*T;
    filename = strcat('/Users/Anusha/Desktop/DMPROJECT/DataMining-master/Merged',action,'.csv');
    disp(filename);
    T = readtable(filename);
    data = table2array(T);
    M = [];
    for i = 0:8
        start = i*5;
        M = horzcat(M, mean(data(:,start+1:start+5),2));
    end
    for i = sensor:34:5100
        plot(t(1:9),M(i,:));hold on;
    end       
    xlabel('Time');
    ylabel('Mean');
    title(strcat('Mean of',{' '}, action));
end
