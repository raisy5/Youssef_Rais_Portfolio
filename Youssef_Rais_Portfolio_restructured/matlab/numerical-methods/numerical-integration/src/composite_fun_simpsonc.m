function[m_simp,I2]=composite_fun_simpsonc(a,b,tol,f,max_iter)

%I= integral(f,a,b)
m_simp=1;% nb subdivision de l'intervalle
%m_simp=1;
I2=simpsonc(a,b,m_simp,f)
%I2=simpsonc(a,b,m_simp,f)
while ((abs(simpsonc(a,b,m_simp+1,f)-I2)/abs(simpsonc(a,b,m_simp+1,f))) >= tol) && (m_simp<=max_iter)
    m_simp=m_simp+1
    I2=simpsonc(a,b,m_simp,f)
    if m_simp>=max_iter
        disp("nombre d'iteration max dépasser")
    end

end
