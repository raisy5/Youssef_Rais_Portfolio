# Fraud Detection on Imbalanced Data

Research internship — **ERIC Laboratory, Université Lumière Lyon 2**.

## Goal
Detect fraudulent transactions in a dataset where fraud is extremely rare, and compare several classification models.

## Method
- Exploratory analysis and correlation heatmap
- Cleaning and encoding of the transaction features
- Models: **logistic regression**, **decision tree**, random forest
- Evaluation with **F1-score** and recall. Accuracy is misleading here: predicting "no fraud" every time already scores above 99 %.

## Results
| Model | F1-score |
|---|---|
| Logistic regression | 0.61 |
| Decision tree | **0.87** |

The decision tree clearly outperforms logistic regression on the metric that matters for rare events.

## Run it
```bash
pip install pandas numpy scikit-learn matplotlib seaborn
jupyter notebook fraud_detection.ipynb
```

The notebook is in French. The dataset was provided by the supervisor and is not included.

**Stack:** Python · scikit-learn · pandas · Seaborn
