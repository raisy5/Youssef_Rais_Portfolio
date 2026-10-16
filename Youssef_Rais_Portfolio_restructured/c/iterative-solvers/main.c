#include "iterative.h"
#include "jacobi_static.h"
#include "gauss_seidel_static.h"
#include "relaxation_methode.h"
#include "jacobi_dynamique.h"
#include "gauss_seidel_dynamique.h"
#include "relaxation_methode_dynamique.h"
#include "utilities.h"
#include "blas1_static.h"
#include "blas2_static.h"
#include <stdlib.h>



int main (int argc, char** argv){


    // declarations of variables static
    
    double a_static[Nx][Ny][5]; 
    double b_static[Nx][Nx];
    double u_old_static[Nx][Nx];
    double u_new_static[Nx][Ny];
    double residual_stories[Niter_max];

    double tol = 1e-10;
    double hx = 1./(Nx-1), hy = 1./(Ny -1);
    //------------------------------------------------
    //equivalent dynamique
    double ***a = malloc(Nx * sizeof(double**));
    for (size_t i = 0; i < Nx; i++) {
        a[i] = malloc(Ny * sizeof(double*));
        for (size_t j = 0; j < Ny; j++)
            a[i][j] = malloc(5 * sizeof(double));
        }
    init_a_dyn(a,hx,hy);
//--------------------------------------------
    double **u_old = calloc(Nx, sizeof(double*));
    for (size_t i = 0; i < Nx; i++)
        u_old[i] = calloc(Ny, sizeof(double));
//----------------------------------------------
    double **u_new = calloc(Nx, sizeof(double*));
    for (size_t i = 0; i < Nx; i++) {
        u_new[i] = calloc(Ny, sizeof(double));
    }
//-----------------------------------------------------
    double *residual = calloc(Niter_max, sizeof(double));
    //-------------Fin de intialisation version dynamic-------

    // initialize a and b
    init_a(a_static, hx, hy);
    // print_a(a_static);

    init_b(b_static, hx, hy);
    // print2D(b_static);

    // initialize u_old and u_new by 0
    set_u(u_old_static, 0.);
    // print2D(u_old_static);
    set_u(u_new_static, 0.);
    // print2D(u_new_static);


    // initialize residual_stories
    dscal(residual_stories, 0., Niter_max);
    // print1D(residual_stories, Niter_max);

    //Si vous voulez choisir  une taille de tableau assez petite 10*10 par exemple pour observer le maillage avec les coefficients 

    // perform Jacobi iterations
    jacobi_static(a_static, b_static, u_old_static, u_new_static, residual_stories, hx, hy, tol);
    //print1D(residual_stories, Niter_max);
    //print2D(u_new_static);


    //perform Gauss_seidel iteratation 
    gauss_seidel_static(a_static,b_static,u_old_static,u_new_static,residual_stories,hx,hy,tol);
    //print2D(u_new_static);
    
    //perform methode de relaxation iteration
    sor_static(a_static,b_static,u_old_static,u_new_static,residual_stories,hx,hy,tol,1.5);//omega=1 = gauss seidel ,
    // si on augumente omega ça converge plus rapidement(attention il faut etre raisonnable)
    //print2D(u_new_static);
    jacobi_dynamic(a, u_old, u_new, residual, hx, hy, tol);


    //Gaaauss seidel dynamique
    gauss_seidel_dynamic(a,u_old,residual,hx,hy,tol);

    //Méthode de relaxation dynamique 
    sor_dynamic(a,u_old,residual,hx,hy,tol,1.5);


//---Libéré la mémoire --------------
    for (size_t i = 0; i < Nx; i++) {
        for (size_t j = 0; j < Ny; j++)
            free(a[i][j]);
        free(a[i]);
    }
    free(a);

    for (size_t i = 0; i < Nx; i++) {
        free(u_old[i]);
        free(u_new[i]);
    }
    free(u_old);
    free(u_new);
    free(residual);

    return 0;
}