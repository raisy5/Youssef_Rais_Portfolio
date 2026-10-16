# Youssef Rais — Applied Mathematics & Machine Learning Portfolio

Engineering student in **Applied Mathematics & Modelling** at Polytech Lyon.
This repository gathers my academic, internship and personal projects, organised by language.

**Interests:** machine learning · credit risk & quantitative finance · simulation · numerical methods

---

## Featured projects

| Project | What it does | Stack |
|---|---|---|
| [Credit risk — IFRS 9 Markov chains](python/credit-risk-ifrs9-markov) | Estimates annual IFRS 9 stage transition matrices (S1/S2/S3) on a bank loan portfolio (2018–2024) and projects the portfolio 25 years ahead | Python · pandas · NumPy |
| [Fraud detection](python/fraud-detection) | Compares classifiers on a highly imbalanced transaction dataset, evaluated with F1-score | Python · scikit-learn |
| [Fashion-MNIST: MLP vs CNN](python/fashion-mnist-cnn) | Image classification with a dense network and a LeNet-style CNN (> 90 % validation accuracy) | Python · Keras / TensorFlow |
| [Wi-Fi RSSI indoor localisation](python/wifi-rssi-localization) | Neural network regressing a position from Wi-Fi signal strengths (R² ≈ 0.96) | Python · TensorFlow |
| [Iterative linear solvers](c/iterative-solvers) | Jacobi, Gauss–Seidel and SOR for the 2D Laplacian, static and dynamic memory versions | C |

---

## Repository structure

```
.
├── python/
│   ├── credit-risk-ifrs9-markov/   # Internship — Banque de Tunisie
│   ├── bank-branch-performance/    # Internship — Banque de Tunisie
│   ├── fraud-detection/            # Research internship — ERIC Lab, Lyon 2
│   ├── fashion-mnist-cnn/          # Deep learning
│   ├── wifi-rssi-localization/     # Deep learning
│   ├── french-cinema-analysis/     # Team project — data analysis
│   ├── ml-fundamentals/            # Learning notebooks
│   └── algorithms/                 # LeetCode & France-IOI exercises
├── r/
│   └── statistics/                 # Estimators, hypothesis testing
├── matlab/
│   └── numerical-methods/          # Root finding, integration, ODE solvers
└── c/
    └── iterative-solvers/          # Jacobi, Gauss–Seidel, SOR
```

Each folder has its own README explaining the goal, the method and how to run it.

## By language

### Python
| Project | Topic |
|---|---|
| [credit-risk-ifrs9-markov](python/credit-risk-ifrs9-markov) | Markov chains, IFRS 9, credit risk |
| [bank-branch-performance](python/bank-branch-performance) | Exploratory analysis of bank branch data |
| [fraud-detection](python/fraud-detection) | Classification on imbalanced data |
| [fashion-mnist-cnn](python/fashion-mnist-cnn) | MLP vs CNN image classification |
| [wifi-rssi-localization](python/wifi-rssi-localization) | Neural network regression |
| [french-cinema-analysis](python/french-cinema-analysis) | Web scraping, PCA, regression (team of 3) |
| [ml-fundamentals](python/ml-fundamentals) | Linear regression from scratch, scikit-learn basics |
| [algorithms](python/algorithms) | Algorithmic exercises |

### R
| Project | Topic |
|---|---|
| [statistics](r/statistics) | Maximum likelihood, estimator comparison, hypothesis tests |

### MATLAB
| Project | Topic |
|---|---|
| [numerical-methods](matlab/numerical-methods) | Bisection & Newton, trapezoidal & Simpson rules, Euler / RK2 / RK4 |

### C
| Project | Topic |
|---|---|
| [iterative-solvers](c/iterative-solvers) | Iterative methods for linear systems |

---

## Tech stack

**Languages:** Python · R · MATLAB · C · SQL
**Libraries:** pandas · NumPy · scikit-learn · TensorFlow / Keras · Matplotlib · Seaborn
**Tools:** Git · Jupyter · Google Colab · LaTeX

> Most notebooks were written for French-taught courses, so their comments and explanations are in French. Each project README summarises the work in English.

## Contact

- LinkedIn: [Youssef Rais](https://www.linkedin.com/in/youssef-rais-6078b9253)
- Email: raisyoussef456@gmail.com
- Location: Lyon, France
