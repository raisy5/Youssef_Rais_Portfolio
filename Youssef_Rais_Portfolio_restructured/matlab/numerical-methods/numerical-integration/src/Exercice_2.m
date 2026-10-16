clear;close all;clc
t=linspace(213,363,160);
t;
E=@ (x) (2.39*10^(-11))./(x.^5).*(exp(1.432./(t.*x))-1);




for i=1:length(t)
    E=@ (x) (2.39*10^(-11))./(x.^5).*(exp(1.432./(t(i).*x))-1);
    l1(i)=simpsonc(3*10^-4,14*10^-4,100,E);
end
l1
%simpsonc(-60,90,2,E)

help quad

for i=1:length(t)
    E=@ (x) (2.39*10^(-11))./(x.^5).*(exp(1.432./(t(i).*x))-1);
    l2(i)=quad(E,3*10^-4,14*10^-4,10^-2,1);
end

l2

