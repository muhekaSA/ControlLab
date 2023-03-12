clear all; %clear area workspace
clc; % clear screen pada command window, 
%tetapi pada area workspace tidak akan hilang data/variabel yang memiliki nilai

t=0:0.1:10;
x=sin(t);
z=cos((2*t)+10); %fungsi z memiliki persamaan 2*t untuk memberikan
%kelebihan nilai dan tidak bertumpuk dengan sinyal x, +10 merupakan asumsi
%pergeseran fasa pada sinyal (phase different)

plot(t,x,'r-')
hold on %---> Menahan sinyal x agar tidak tertimpa dengan graph sinyal Z
plot(t,z,'k--')
title('Mulitple Plot')
xlabel('t'),ylabel('Amplitude')
grid
legend('x=Sin(t)'),
('y=cos(t)'),('z=cos(2*t+10)')
hold off;