# Iterative Solvers for Linear Systems in C

## Goal
Solve the linear system obtained by discretising the **2D Laplacian** (five-point finite-difference stencil) on a 20 × 20 grid, and compare classical iterative methods.

## Methods
- **Jacobi**
- **Gauss–Seidel**
- **SOR** (successive over-relaxation, ω = 1.5)

Each method has two implementations:
- **static**: fixed-size arrays
- **dynamic**: heap allocation with `malloc` / `calloc`

Small BLAS-style helpers (`blas1_static`, `blas2_static`) handle the vector and matrix operations. The residual history is stored to compare convergence.

## Build and run
```bash
gcc -O2 -o solvers *.c -lm
./solvers
```
The program prints the number of iterations each method needs to converge (tolerance 1e-10). Grid size and maximum iterations are set in `iterative.h`.

## Structure
| File | Role |
|---|---|
| `main.c` | Initialises the problem and runs every solver |
| `jacobi_*.c`, `gauss_seidel_*.c`, `relaxation_methode*.c` | Solver implementations (static / dynamic) |
| `blas1_static.c`, `blas2_static.c` | Vector and matrix helpers |
| `utilities.c` | Problem setup (Laplacian coefficients, right-hand side) and printing |
| `iterative.h` | Grid size and iteration limits |
