clear all; %clear area workspace
clc; % clear screen pada command window, 

n = 10 %variabel konstanta yang dapat digunakan untuk mengatur jarak 
%dari setiap titik pada gelombang yang ditampilkan

t = 0 : 1/n : 10 %-> 0 merupakan titik mula, 
%1/n merupakan indikasi jarak antara 1 titik sinyal dengan titik selanjunya
%(asumsi n=10, maka 1/10= 0.1, maka jarak antara 1 titik dengan titik
%selanjunya adalah 0.1
%10 merupakan titik akhir dari axis x (titik akhir sinyal)

y = sin(t); %fungsi sinyal sinus
plot (t,y,'ro')
title ('Grafik Y = Sin(t)')
grid %memberikan grid atau garis kotak-kotak pada axis
xlabel('t'), ylabel('Amplitude')