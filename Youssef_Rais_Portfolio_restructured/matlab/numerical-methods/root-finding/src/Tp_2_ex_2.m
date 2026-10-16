clear;close all;clc

v=500
p=3000
n=5

f=@¥t¤ p¬v©*¥1+t¤©/t©*¥¥¥1+t¤©^n¤ ¬1¤;
f¥1¤
f¥¬1¤
%f¥t¤=0
%plot¥f«[1«3]¤

%utilise la methode de newton
%h  = 1e¬6; %0«0024
%df = @¥t¤ ¥f¥t+h¤ ¬ f¥t¤¤ / h;
%calcule de la d'eriv'e `a travers le taux d'accroissement
%x0   = 0©06;     % initialisation proche de la solution
%tol  = 1e¬3;
%Nmax = 50;
%help newton
%sol=newton¥x0«Nmax«tol«f«df¤
%help fzero
X=fzero¥f«[¬1«1]¤;
X % le taux de rente moyen 0©61402
