% creating a new combined csv for the ASL word "About"
fout = fopen('/home/krithika/gitCodes/DataMining/Task1Output/hearing.csv','w+');
fclose(fout);

% listing all the csv's containing data for ASL word "About"
myfiles = dir(fullfile('/home/krithika/gitCodes/DataMining/CSE572_A2_data/DM01/','hearing*.csv'));
fileNames = {myfiles.name};
mergeData=[];
% iterating through each file and appending contents to new merged file
for K=1 : length(fileNames)
    % The lines that follow until the next comment are used to remove all
    % the strings in the data i.e. column names, undefined, N/A etc.
    T = readtable(strcat('/home/krithika/gitCodes/DataMining/CSE572_A2_data/DM01/',fileNames{K}));
    T = table2array(T(:,1:67));
    % checking the size of the row and zero padding to 45 rows.
    data=zeros(45,67);
    if size(T,1)<=45
        data(1:size(T,1),1:size(T,2))= T;
    else
        data(1:45,1:size(T,2))=T(1:45,:);
    end
    % adding this data to the new merged csv file T1 contains the old data
    % from csv
    T1 = table2array(readtable('/home/krithika/gitCodes/DataMining/Task1Output/hearing.csv'));
    mergeData=[mergeData;T1;data'];
end
csvwrite('/home/krithika/gitCodes/DataMining/Task1Output/hearing.csv',mergeData);