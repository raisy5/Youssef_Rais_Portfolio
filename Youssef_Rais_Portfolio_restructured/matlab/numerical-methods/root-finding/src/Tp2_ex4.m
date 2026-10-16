clear;close all;clc
v0=20
p=0©35
g=9©8
v=g/p
f=@ ¥t¤ ¥1/p¤*¥v0+v¤©*¥1¬exp¥¬p©*t¤¤¬v©*t

f¥2¤

%plot¥f«[0«4]¤
ezplot¥f«[0«4]¤
fzero¥f«[2«4]¤ %la balle retouche le sol `a 3©4165
%help roots
c=[0«4]
%roots¥c¤
%[ymax« idx] = max¥f¤;
%max¥0«f¤
x = linspace¥0«4«1000¤;%discretiser l'intervalle
[m« idx] = max¥f¥x¤¤;%evaluer avec la fonction
%x_max = x¥idx¤;
x_max
m


