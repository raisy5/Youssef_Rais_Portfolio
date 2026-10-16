# Cinemas in France: Trends, Constraints and Challenges

Team project (3 students) — Data Analysis course, Polytech Lyon, January 2026.
Authors: Alice Perrin, Youssef Rais, Etienne Mabileau.

## Goal
Analyse how cinema attendance in France has evolved, especially after COVID-19, and what drives a film's success.

## Method
- **Data collection:** public datasets plus web scraping (BeautifulSoup) to add ratings and runtime
- **Cleaning and merging** of several sources
- **Visualisation:** time series and interactive maps (Folium)
- **PCA** and covariance analysis on film features
- **Prediction:** linear regression and random forest on box-office entries

## Findings
- Attendance collapsed in 2020 and has been recovering since, but the recovery remains fragile against streaming platforms.
- Rating and runtime are positively correlated with the number of entries; release year has almost no effect.
- The prediction models performed poorly, mainly because the dataset is small and the relationships are non-linear. This is discussed honestly in the conclusion.

## Run it
Some input files must be downloaded separately; see the instructions at the top of the notebook. The notebook is in French.

**Stack:** Python · pandas · scikit-learn · BeautifulSoup · Folium · Matplotlib
