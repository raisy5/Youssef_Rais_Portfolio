#pragma once
#include <stddef.h>
#include<stdio.h>
#include<math.h>
#include "iterative.h"

void sor_dynamic(double*** a,double** u,double* residual,double hx, double hy,double tol,double omega);