# Credit Risk Modelling with Markov Chains (IFRS 9)

Internship project — **Banque de Tunisie**, July 2025.

## Goal
Under IFRS 9, every loan is classified into one of three stages, which drives how much the bank must provision:

| Stage | Meaning | Provision |
|---|---|---|
| S1 | Performing — payments up to date | 12-month ECL |
| S2 | Significant increase in risk — 1 to 3 months overdue | Lifetime ECL |
| S3 | Default — more than 3 months overdue | Lifetime ECL + default provision |

This project estimates how clients move between these stages from one year to the next, and projects how the portfolio evolves.

## Method
1. Build the `stage` variable from the bank's arrears code, for each year from 2018 to 2024.
2. Estimate seven annual **transition matrices** S1/S2/S3 by matching clients across consecutive years.
3. Use a **Markov chain** (matrix powers, eigen-decomposition) to project the portfolio 25 years ahead.

## Key results
- Performing clients (S1) stay performing about **97 %** of the time year over year.
- Defaulted clients (S3) rarely recover: **85–88 %** stay in default.
- Recovery improves after 2022: the S3 → S1 probability rises from about **9 % to 16 %**, consistent with the end of COVID-era moratoria.

**Limitations:** first-order Markov assumption (only the current stage matters) and time-homogeneous behaviour. Natural extensions: add explanatory variables (loan amount, client profile) and macroeconomic scenarios.

## Run it
```bash
pip install pandas numpy matplotlib seaborn pyarrow
jupyter notebook ifrs9_markov_transition_matrices.ipynb
```

## Files
| File | Description |
|---|---|
| `ifrs9_markov_transition_matrices.ipynb` | Full analysis (notebook in French) |
| `data/` | Yearly portfolio extracts in Parquet format, with pseudonymised client IDs |

**Stack:** Python · pandas · NumPy · Matplotlib · Seaborn
