#include "gauss_seidel_static.h"
#include "iterative.h"
#include "utilities.h"
#include <math.h>
#include <stddef.h>
#include <stdio.h>



void gauss_seidel_static(double a[Nx][Ny][5], double b[Nx][Ny],
     double u_old[Nx][Ny],
      double u_new[Nx][Ny],
      double residual[Niter_max],
     double hx, double hy, double tol)
{
    size_t it = 0;
    double cur_res = 1.0;

    // Option : initialiser u_new = u_old au départ
    copy_u(u_old, u_new);

    for (it = 0; it < Niter_max; it++) {

        double diff_acc = 0.0;

        // balayage de la grille
        for (size_t i = 0; i < Nx; i++) {
            for (size_t j = 0; j < Ny; j++) {

                double old_val = u_new[i][j]; // valeur des u_new "avant mise à jour" (pour le résidu)

                // Dirichlet
                if (i == 0 || i == Nx-1 || j == 0 || j == Ny-1) {
                    u_new[i][j] = b[i][j];
                } else {
                    // Gauss-Seidel : 2 voisins en u_new (déjà mis à jour), 2 voisins en u_old ,c'est la seul différence avec Jacobi
                    u_new[i][j] =
                        ( b[i][j]
                        - a[i][j][0] * u_new[i-1][j]   // déjà à jour
                        - a[i][j][1] * u_new[i][j-1]   // déjà à jour
                        - a[i][j][3] * u_old[i][j+1]   // pas encore à jour
                        - a[i][j][4] * u_old[i+1][j]   // pas encore à jour
                        ) / a[i][j][2];
                }

                double diff = u_new[i][j] - old_val; //résidu iteratif 
                diff_acc += diff * diff;
            }
        }

        cur_res = sqrt(diff_acc);
        residual[it] = cur_res;

        //printf("it : %zu \t res = %.11f\n", it, cur_res); vous pouvez le remettre pour voir la vitesse de la convergence

        // important : préparer l'itération suivante
        copy_u(u_new, u_old);

        if (cur_res < tol && it >= 2) break;
    }

    if (it < Niter_max)
        printf("[Gauss-Seidel] converged after %zu iterations !\n", it);
    else
        printf("[Gauss-Seidel] maximum iteration reached without converged !\n");
}
