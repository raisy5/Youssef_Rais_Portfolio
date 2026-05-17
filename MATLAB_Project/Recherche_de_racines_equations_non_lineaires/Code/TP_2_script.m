clear;close all;clc

f=@¥x¤ ¥x©/2¤¬sin¥x¤+¥pi/6¤¬¥sqrt¥3¤/2¤;
%Question a ¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬
%help¥"fplot"¤
%fplot¥f«[¬pi/2«pi]¤;
%help¥"plot"¤;
%plot¥f«[¬pi/2«pi]¤
%¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬

%Question b1 ¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬
a=¬0©4;
b=3;
f¥a¤*f¥b¤ ; %Voici un exemple de a et b ou f¥a¤*f¥b¤ <0
ezplot¥f«[¬pi/2«pi]¤;
%¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬


%Question b2 ¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬
a=bisection¥a«b«10^¬10«10«f¤
%¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬
%help bisection

dfun=@¥x¤ ¥1/2¤*¬cos¥x¤;
dfun¥5¤
h  = 1e¬6; %0«0024
df = @¥t¤ ¥f¥t+h¤ ¬ f¥t¤¤ / h;
df¥5¤
alpha_1=newton¥pi«100«10^¬10«f«dfun¤%converge

beta_1=newton¥¬pi/2«100«10^¬10«f«dfun¤%beta converge pas
help plot
plot¥alpha_1¤
hold on
plot¥beta_1¤
%elle sont differente car elle converge pas de la meme vitesse vers 0
help newton
