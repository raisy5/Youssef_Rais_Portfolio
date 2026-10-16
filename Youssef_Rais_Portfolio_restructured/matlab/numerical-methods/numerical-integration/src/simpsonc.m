function I_simp = simpsonc(a,b,m,fun)
%
%   
% Computes the integral of fun between a and b, using the Simpson's rule.
%
% >> INPUT <<
%
%  a, b       extremes of the interval [a, b]
%  m          number of subintervals of [a, b]
%  fun        function to be integrated in [a,b], given as inline object, 
%             anonymous given by a handle function @  or a function filename(fun.m)
%
% >> OUTPUT <<
%
%  I_simp     value of the integral
%
%
h=(b-a)/m; x=[a:h/2:b]; dim = max(size(x)); y=feval(fun,x); 
if size(y)==1, y=diag(ones(dim))*y; end; 
I_simp=(h/6)*(y(1)+2*sum(y(3:2:2*m-1))+4*sum(y(2:2:2*m))+y(2*m+1));
