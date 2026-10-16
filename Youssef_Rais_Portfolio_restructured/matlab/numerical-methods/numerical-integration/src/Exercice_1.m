clear;close all;clc
%help simpsonc

f=@ (x) sqrt(1.-x.^2)
b=5
a=1
i_exact=integral(f,a,b)
for i=1:5
    l1(i)=simpsonc(1,5,2.^i,f)
    l2(i)=trapezc(1,5,2^i,f)
    h(i)=(b-a)/2^i
    erreurs(i)=i_exact-l1(i)
    erreurs2(i)=i_exact-l2(i)
end

%erreurs et un complex je prend le modul(abs) pour 
%z complexe,|z| = √(a² + b²) module

%y=erreurs
%x=h

%%
help polyfit

p=polyfit(log(h),log(abs(erreurs)),1)
p1=polyfit(log(h),log(abs(erreurs2)),1)
%alpha=1,4 et k= -3.2340
plot(log(h),log(abs(erreurs)))
hold on 
plot(log(h),log(abs(erreurs2)))
title(['Comparaison de l''évolution de log(Erreurs) des deux méthodes,Trapèze et simpsonc'])
xlabel('log(Erreurs)') 
ylabel('log(h)')
legend({'y = simpsonc','y=Trapèze'},'Location','southeast')
saveas(gcf,"exercice1_erreur_tp3","png")
%loglog(h,abs(erreurs))


%on a peu près 1.5 pour les deux coefficients donc les deux methode ont la
%meme pente donc ils évoluent à peu près à la meme allure ce qui est
%totalement en contradiction avec la théorie qui stipule que la méthode de
%simpson doit converger plus vite que trapèze. 

lookfor quadrature
%%
%notre fonction n'est pas C^4 donc si on prend par exemple sin
g=@ (x) sin(x)
b=5
a=1
i_exact=integral(g,a,b)
for i=1:5
    l1(i)=simpsonc(1,5,2.^i,g)
    l2(i)=trapezc(1,5,2^i,g)
    h(i)=(b-a)/2^i
    erreurs(i)=i_exact-l1(i)
    erreurs2(i)=i_exact-l2(i)
end

p=polyfit(log(h),log(abs(erreurs)),1)
p1=polyfit(log(h),log(abs(erreurs2)),1)


plot(log(h),log(abs(erreurs)))
hold on 
plot(log(h),log(abs(erreurs2)))
title(['Comparaison de l''évolution de log(Erreurs) des deux méthodes,Trapèze et simpsonc'])
xlabel('log(Erreurs)') 
ylabel('log(h)')
legend({'y = simpsonc','y=Trapèze'},'Location','southeast')
saveas(gcf,"exercice1_erreur_tp3","png")

%On remarquera que la méthode simpson à une pente plus importante
%elle convergera plus rapidement que trapèze


