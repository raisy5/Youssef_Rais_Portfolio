#include "relaxation_methode_dynamique.h"
#include "iterative.h"
#include "utilities.h"
#include <math.h>
#include <stddef.h>
#include <stdio.h>







void sor_dynamic(double*** a,
                 double** u,          
                 double* residual,    
                 double hx, double hy,
                 double tol,
                 double omega)        
{
    if (omega <= 0.0 || omega >= 2.0) {
        printf("[SOR dynamique] omega must be in (0,2). Given: %f\n", omega); // Verification de omega (raisonnable)
        return;
    }

    size_t it;
    double cur_res = 1.0;

    for (it = 0; it < Niter_max; ++it) {

        double diff_acc = 0.0;

        for (size_t i = 0; i < Nx; ++i) {
            for (size_t j = 0; j < Ny; ++j) {

                // Dirichlet sur le bord ne change pas 
                if (i == 0 || i == Nx - 1 || j == 0 || j == Ny - 1) {
                    double newv = b_rhs(i * hx, j * hy);
                    double d = newv - u[i][j];
                    u[i][j] = newv;
                    diff_acc += d * d;
                    continue;
                }

                double oldv = u[i][j];

                //on va réutiliser gauss_seidel qui représente un cas particulier de relaxation avec omega =1 
                double gs =
                    ( b_rhs(i * hx, j * hy)
                      - a[i][j][0] * u[i-1][j]
                      - a[i][j][1] * u[i][j-1]
                      - a[i][j][3] * u[i][j+1]
                      - a[i][j][4] * u[i+1][j]
                    ) / a[i][j][2];

                // l'integration du coefficient omega 
                double newv = (1.0 - omega) * oldv + omega * gs;

                u[i][j] = newv;

                double d = newv - oldv;
                diff_acc += d * d;
            }
        }

        cur_res = sqrt(diff_acc);
        residual[it] = cur_res;

        if (cur_res < tol && it >= 2) break;
    }

    if (it < Niter_max)
        printf("[SOR dynamique] converged after %zu iterations ! (omega=%g)\n", it,omega);
    else
        printf("[SOR dynamique] maximum iteration reached without convergence ! (omega=%g)\n",omega);
}