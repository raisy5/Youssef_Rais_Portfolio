clear;close all;clc
a=0;
b=1;
f= @ (x) 4./(1.+x.^2);
max_iter=1500
tolerance=10^-10


trapeze=composite_fun(a,b,tolerance,f,max_iter)
simpson=composite_fun_simpsonc(a,b,tolerance,f,max_iter)

plot(trapeze,max_iter)
hold on
plot(simpson)