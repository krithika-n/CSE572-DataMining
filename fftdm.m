myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/','mergedAbout*.csv'));
fileNames = {myfiles.name};
disp(fileNames);
meanX = [];
meanY = [];
Fs = 15;
T = 1/Fs;
L = 3000;
t = (0:L-1)*T;
myfft1 = [];
myfft2 = [];
myfft3 = [];
myfft4 = [];
myfft5 = [];
myfft6 = [];
myfft7 = [];
myfft8 = [];
myfft9 = [];
myfft10 = [];
color = ['y','m','c','r','g','b','w','k',[0 0.7 0],[0.7 0 0.7]];
for K=1 : length(fileNames)
   T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/',fileNames{K}));
   disp(size(T));
   data = table2array(T);
   % This lets us take the fft of each row
   M = abs(fft(data,[],2));
   
   for i = 0:9
       myfft1 = vertcat(myfft1,M(i*34 + 2,:));
       myfft2 = vertcat(myfft2,M(510 + i*34 + 2,:));
       myfft3 = vertcat(myfft3,M(510*2 + i*34 + 2,:));
       myfft4 = vertcat(myfft4,M(510*3 + i*34 + 2,:));
       myfft5 = vertcat(myfft5,M(510*4 + i*34 + 2,:));
       myfft6 = vertcat(myfft6,M(510*5 + i*34 + 2,:));
       myfft7 = vertcat(myfft7,M(510*6 + i*34 + 2,:));
       myfft8 = vertcat(myfft8,M(510*7 + i*34 + 2,:));
       myfft9 = vertcat(myfft9,M(510*8 + i*34 + 2,:));
       myfft10 = vertcat(myfft10,M(510*9 + i*34 + 2,:));
       
       %31 + 1 is the column number of sensor
       %meanX = [meanX;M(i*67+31)];
      % meanX= [meanX,i*ones(size(meanX))];
       %meanY = [meanY;M(i*67+37)];
      % meanY= [meanY,i*ones(size(meanY))];
   end
   %disp(size(M))
       
end
plot(t(1:45),myfft1,color(1));hold on;
plot(t(1:45),myfft2,color(2));hold on;
plot(t(1:45),myfft3,color(3));hold on;
plot(t(1:45),myfft4,color(4));hold on;
plot(t(1:45),myfft5,color(5));hold on;
plot(t(1:45),myfft6,color(6));hold on;
plot(t(1:45),myfft7,color(7));hold on;
plot(t(1:45),myfft8,color(8));hold on;
plot(t(1:45),myfft9,color(9));hold on;
plot(t(1:45),myfft10,color(10));hold on;

xlabel('t');
ylabel('fft');
class = ones(size(meanX));
% class(1:10) = 1;
% class(11:20) = 2;
% class(21:30) = 3;
% class(31:40) = 4;
% class(41:50) = 5;
% class(51:60) = 6;
% class(61:70) = 7;
% class(71:80) = 8;
% class(81:90) = 9;
% class(91:100)=10;
%
%meanX = horzcat(meanX,class);
%meanY = horzcat(meanY,class);
forGraph=[meanX,meanY,class];

% g = load('mergedAbout.CSV');
% sensor = g(1:67,1:945);
% fftS = fft(sensor);
% time = 1:945;
% figure(1)
% plot(time,fftS);
% xlabel('time')
% ylabel('about')
% title('{\bf About data}')
