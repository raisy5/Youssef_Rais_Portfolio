#include "gauss_seidel_dynamique.h"
#include "iterative.h"
#include "utilities.h"
#include <math.h>
#include <stddef.h>
#include <stdio.h>

void gauss_seidel_dynamic(double*** a,double** u,double* residual,
                        double hx, double hy,
                          double tol)
{
    size_t it;
    double cur_res = 1.0;

    for (it = 0; it < Niter_max; ++it) {

        double diff_acc = 0.0;

        for (size_t i = 0; i < Nx; ++i) {
            for (size_t j = 0; j < Ny; ++j) {

                // Dirichlet sur le bord
                if (i == 0 || i == Nx - 1 || j == 0 || j == Ny - 1) {
                    double newv = b_rhs(i * hx, j * hy);
                    double d = newv - u[i][j];
                    u[i][j] = newv;
                    diff_acc += d * d;
                    continue;
                }

                // Sauvegarde ancienne valeur (pour résidu)
                double oldv = u[i][j];

                double newv =
                    ( b_rhs(i * hx, j * hy)
                      - a[i][j][0] * u[i-1][j]
                      - a[i][j][1] * u[i][j-1]
                      - a[i][j][3] * u[i][j+1]
                      - a[i][j][4] * u[i+1][j]
                    ) / a[i][j][2];

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
        printf("[Gauss-Seidel dynamique] converged after %zu iterations !\n", it);
    else
        printf("[Gauss-Seidel dynamique] maximum iteration reached without convergence !\n");
}
