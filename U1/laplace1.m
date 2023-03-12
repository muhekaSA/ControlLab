clear all
clc

%syms t
%f= 1-cos(2*t);
%laplace(f)


%syms s; 
%F= 2/(s-4);
%f=ilaplace (F) % Save As, F5


%syms x; 
%y=x^3+2*x^2+6*x+7; 
%z=diff(y)