% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'About*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedAbout.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedAnd.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'And*.csv'));
fileNames = {myfiles.name};
disp(outerFiles{M});

% iterating through each file and appending contents to new merged file
for K=1 :15
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedAnd.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedCan.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Can*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedCan.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedCop.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Cop*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedCop.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedDeaf.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Deaf*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedDeaf.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedDecide.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Decide*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedDecide.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedFather.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Father*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedFather.csv',data2);

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedFind.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Find*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedFind.csv',data2);

% creating a new combined csv for the ASL word "About"
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

% creating a new combined csv for the ASL word "About"
fout = fopen('/Users/tej/Documents/CSE572-DataMining/mergedHearing.csv','a+');
fclose(fout);
data2 = [];
myOuterFiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/','DM*'));
outerFiles = {myOuterFiles.name};
for M=1 : 10
direc = strcat(outerFiles{M},'/');
myfiles = dir(fullfile(strcat('/Users/tej/Documents/CSE572-DataMining/CSE572_A2_data/',direc),'Hearing*.csv'));
fileNames = {myfiles.name};
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
csvwrite('/Users/tej/Documents/CSE572-DataMining/mergedHearing.csv',data2);
















