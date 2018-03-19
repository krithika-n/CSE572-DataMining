fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedGoOut.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Go Out*.csv'));
fileNames = {myfiles.name};
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Goout*.csv'));
fileNames2 = {myfiles.name};
disp(size(fileNames));
disp(size(fileNames2));
fileNames = horzcat(fileNames,fileNames2);
disp(size(fileNames));

disp(outerFiles{M});
% iterating through each file and appending contents to new merged file
for K=1 : 15
    disp(fileNames{K});
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),fileNames{K}));
    T = table2array(T(:,(1:34)));
    t1 = zeros(45,34);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    %disp(size(data2));
    data2 = vertcat(data2,data');
end
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedGoOut.csv',data2);
