function I_trap = trapezc(a,b,m,fun)
%
%
%   
% Computes the integral of fun between a and b, using the trapeziodal formula.
%
% >> INPUT <<
%
%  a, b       extremes of the interval [a, b]
%  m          number of subintervals of [a, b]
%  fun        function to be integrated in [a,b], given as inline object, 
%             anonymous given by a handle function @  or a function filename(fun.m)
%
%
% >> OUTPUT <<
%
%  I_trap     value of the integral
%
%  
%
h=(b-a)/m; x=[a:h:b]; dim = max(size(x)); y=feval(fun,x); 
if size(y)==1, y=diag(ones(dim))*y; end; 
I_trap=h*(0.5*y(1)+sum(y(2:m))+0.5*y(m+1));
