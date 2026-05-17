function [xvect,xdif,fx,nit]=bisection(a,b,toll,nmax,fun)

% [xvect,xdif,fx,nit] = bisection(a,b,toll,nmax,fun)
%
% bisection method
%
%  >> INPUT <<
%
%  a, b       two values such that fun(a)*fun(b)<0       
%  toll       tolerance required
%  nmax       maximum number of iterations
%  fun        function given as inline object or a function filename(fun.m)
%  
%
%  >> OUTPUT <<
%
%  xvect      vector containing all the iterates, the root is
%             xvect(nit)
%  xdif       difference between to iterates
%  fx         values of fun in xvect
%  nit        number of iterations required to reach the 
%             prescribed tolerance
%  >> EXAMPLE <<
%
%  [xvect,xdif,fx,nit]=bisection(-1,1,1e-6,150, inline('sin(x)'))
%

err=toll+1; 
nit=0; 
xvect=[]; 
fx=[]; 
xdif=[];
while (nit < nmax & err > toll)
    nit=nit+1; 
    c=(a+b)/2; 
    fc=fun(c); 
    xvect=[xvect;c]; 
    fx=[fx;fc]; 
    if (fc*fun(a) > 0)
      a=c; 
    else 
      b=c; 
    end; 
    err=abs(b-a); 
    xdif=[xdif;err];
end
return