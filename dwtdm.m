myfiles = dir(fullfile('/Users/thiviyakalyaninavaneethan/Downloads/CSE572-DataMining-master/','mergedHearing*.csv'));
fileNames = {myfiles.name};
disp(fileNames);
meanX = [];
meanY = [];
Fs = 15;
T = 1/Fs;
L = 3000;
t = (0:L-1)*T;

counter =0;
color = ['y','m','c','r','g','b','w','k',[0 0.7 0],[0.7 0 0.7]];
for K=1 : length(fileNames)
   T = readtable(strcat('/Users/thiviyakalyaninavaneethan/Downloads/CSE572-DataMining-master/',fileNames{K}));
   disp(fileNames{K})
   disp(size(T));
   data = table2array(T);
  j=9;
    dt1 = [];
    dt2 = [];
    dt3 = [];
    dt4 = [];
    dt5 = [];
    dt6 = [];
    dt7 = [];
    dt8 = [];
    dt9 = [];
    dt10 = [];
  for i = 1:9 
   dt1 = vertcat(dt1,data(i*j,:));
   dt2 = vertcat(dt2,data(510+i*j,:));
   dt3 = vertcat(dt3,data(510*2+i*j,:));
   dt4 = vertcat(dt4,data(510*3+i*j,:));
   dt5 = vertcat(dt5,data(510*4+i*j,:));
   dt6 = vertcat(dt6,data(510*5+i*j,:));
   dt7 = vertcat(dt7,data(510*6+i*j,:));
   dt8 = vertcat(dt8,data(510*7+i*j,:));
   dt9 = vertcat(dt9,data(510*8+i*j,:));
   dt10 = vertcat(dt10,data(510*9+i*j,:));
  end
   
  X= vertcat(dt1,dt2);
  X= vertcat(X,dt3);
  X= vertcat(X,dt4);
  X= vertcat(X,dt5);
  X= vertcat(X,dt6);
  X= vertcat(X,dt7);
  X= vertcat(X,dt8);
  X= vertcat(X,dt9);
  X= vertcat(X,dt10);
  
  [cA,cH,cV,cD] = dwt2(X,'sym4','mode','per');
 
  a = plot(cV); 
  title('Hearing DWT feature');
  xlabel('Sample');
  ylabel('Coefficient value');
  saveas(gcf,'Hearing9.png');
  counter = counter+1;
  delete(a);
end
 
