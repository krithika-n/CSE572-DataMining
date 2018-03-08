g = load('mergedAbout.CSV');
sensor = g(1:67,1:945);
fftS = fft(sensor);
time = 1:945;
figure(1)
plot(time,fftS);
xlabel('time')
ylabel('about')
title('{\bf About data}')
