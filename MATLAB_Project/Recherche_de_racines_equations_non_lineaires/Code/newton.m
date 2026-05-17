function [xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun)
% [xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun)
%
% Newton method for nonlinear systems
%
%  >> INPUT <<
%
%  x0         starting point, a <= x <= b
%  nmax       maximum number of iterations
%  toll       tolerance required
%  fun        function given as inline object or a function filename (fun.m)
%  dfun       first derivate of function given as inline object or a
%               function filename (dfun.m)
%
%  >> OUTPUT <<
%
%  xvect      vector containing all the iterates, the root of fun is
%             xvect(nit+1)
%  xdif       difference between to iterates
%  fx         values of fun in xvect
%  nit        number of iterations required to reach the 
%             prescribed tolerance
%  >> EXAMPLE <<
%
%  fun = inline('sin(2*x)-1+x');
%  dfun = inline('2*cos(2*x) + 1');
%  [xvect,xdif,fx,nit]=newton(0.7,100,1e-8,fun,dfun);
%
err=toll+1; nit=0; xvect=x0;  fx=fun(x0); xdif=[];
while (nit < nmax & err > toll),
    nit=nit+1; x=xvect(nit); dfx=dfun(x);
    if (dfx == 0), err=toll*1.e-10;
       disp(' Stop for vanishing dfun  ');
    else,
       xn=x-fx(nit)/dfx; err=abs(xn-x); xdif=[xdif; err];
       x=xn; xvect=[xvect;x]; fx=[fx;fun(x)];
    end;
end;
