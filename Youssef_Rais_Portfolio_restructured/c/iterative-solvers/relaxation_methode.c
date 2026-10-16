#include "relaxation_methode.h"
#include "iterative.h"
#include "utilities.h"
#include <math.h>
#include <stddef.h>
#include <stdio.h>



void sor_static(double a[Nx][Ny][5], double b[Nx][Ny],
                double u_old[Nx][Ny], double u_new[Nx][Ny],
                double residual[Niter_max],
                double hx, double hy, double tol,
                double omega)
{
    size_t it = 0;
    double cur_res = 1.0;

    // initialiser u_new = u_old au départ
    copy_u(u_old, u_new);

    for (it = 0; it < Niter_max; it++) {

        double diff_acc = 0.0;

        for (size_t i = 0; i < Nx; i++) {
            for (size_t j = 0; j < Ny; j++) {

                double old_val = u_new[i][j];

                // Dirichlet
                if (i == 0 || i == Nx-1 || j == 0 || j == Ny-1) {
                    u_new[i][j] = b[i][j];
                } else {
                    //la méthode gauss seidel représente soc quand omega =1
                    double u_gs =
                        ( b[i][j]
                        - a[i][j][0] * u_new[i-1][j]   // déjà à jour
                        - a[i][j][1] * u_new[i][j-1]   // déjà à jour
                        - a[i][j][3] * u_old[i][j+1]   // pas encore à jour
                        - a[i][j][4] * u_old[i+1][j]   // pas encore à jour
                        ) / a[i][j][2];

                    // Relaxation (SOR)
                    u_new[i][j] = (1.0 - omega) * old_val + omega * u_gs;
                }

                double diff = u_new[i][j] - old_val;
                diff_acc += diff * diff;
            }
        }

        cur_res = sqrt(diff_acc);
        residual[it] = cur_res;

        //printf("it : %zu \t res = %.11f\n", it, cur_res);vous pouvez le remettre pour voir la vitesse de la convergence

        // préparer l'itération suivante
        copy_u(u_new, u_old);

        if (cur_res < tol && it >= 2) break;
    }

    if (it < Niter_max)
        printf("[SOR] converged after %zu iterations !\n", it);
    else
        printf("[SOR] maximum iteration reached without converged !\n");
}