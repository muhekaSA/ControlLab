t=0:0.1:10;
x=sin(t);
y=sin(t+30);
subplot(2,1,1)
plot(t,x,'r-')
grid on
 xlabel('t'),ylabel('Amplitude')
title(' Grafik x = Sin(t)')
subplot(2,1,2)
plot(t,y,'bo')
grid on
 xlabel('t'),ylabel('Amplitude')
grid on
title('Grafik y = sin(t+30)')
hold off