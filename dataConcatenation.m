% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','About*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv',data2);

% creating a new combined csv for the ASL word "And"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedAnd.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','And*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedAnd.csv',data2);

% creating a new combined csv for the ASL word "Can"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedCan.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','Can*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedCan.csv',data2);

% creating a new combined csv for the ASL word "cop"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedCop.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','Cop*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedCop.csv',data2);

% creating a new combined csv for the ASL word "deaf"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedDeaf.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','deaf*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedDeaf.csv',data2);

% creating a new combined csv for the ASL word "decide"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedDecide.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','decide*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedDecide.csv',data2);

% creating a new combined csv for the ASL word "father"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedFather.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','father*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedFather.csv',data2);

% creating a new combined csv for the ASL word "find"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedFind.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','find*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedFind.csv',data2);

% creating a new combined csv for the ASL word "Go out"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedGoOut.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','go out*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedGoOut.csv',data2);

% creating a new combined csv for the ASL word "hearing"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedHearing.csv','a+');
fclose(fout);
data2 = [];
myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/','hearing*.csv'));
fileNames = {myfiles.name};
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,(1:67)));
    t1 = zeros(45,67);
    if size(T,1)<=45
        t1(1:size(T,1),1:size(T,2))= T;
    else
        t1(1:45,1:size(T,2))=T(1:45,:);
    end
    data = t1;
    
    %T1 = table2array(readtable('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv'));
    disp(size(data2));
    data2 = vertcat(data2,data');
end
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedHearing.csv',data2);