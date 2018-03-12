myfiles = dir(fullfile('/Users/tej/Documents/CSE572-DataMining/','merged*.csv'));
fileNames = {myfiles.name};
meanX = []
meanY = [];
for K=1 : length(fileNames)
   T = readtable(strcat('/Users/tej/Documents/CSE572-DataMining/',fileNames{K}));
   disp(size(T));
   data = table2array(T);
   M = mean(data,2);
   N= median(data,2);
   for i = 1:10
       %31 + 1 is the column number of sensor
       meanX = [meanX;M(i*67+31)];
      % meanX= [meanX,i*ones(size(meanX))];
       meanY = [meanY;N(i*67+37)];
      % meanY= [meanY,i*ones(size(meanY))];
   end
   %disp(size(M))
       
end
class = ones(size(meanX));
class(1:10) = 1;
class(11:20) = 2;
class(21:30) = 3;
class(31:40) = 4;
class(41:50) = 5;
class(51:60) = 6;
class(61:70) = 7;
class(71:80) = 8;
class(81:90) = 9;
class(91:100)=10;
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
