
function[m_trap,I1_old]=composite_fun(a,b,tol,f,max_iter)

%I= integral(f,a,b)
m_trap=1;% nb subdivision de l'intervalle
%m_simp=1;
I1_old=trapezc(a,b,m_trap,f)
%I2=simpsonc(a,b,m_simp,f)
while ((abs(trapezc(a,b,m_trap+1,f)-I1_old)/abs(trapezc(a,b,m_trap+1,f))) >= tol) && (m_trap<=max_iter)
    m_trap=m_trap+1
    I1_old=trapezc(a,b,m_trap,f)
    if m_trap>=max_iter
        disp("nombre d'iteration max dépasser")
    end

    

end




