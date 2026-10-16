# Indoor Localisation from Wi-Fi Signal Strength (RSSI)

## Goal
Estimate a device's position from the strength of the Wi-Fi signals it receives (RSSI) using a neural network.

## Method
- Load and clean several RSSI measurement files.
- Fill missing values with **local interpolation**, which uses neighbouring measurements rather than a global mean, with a fallback when that fails.
- Standardise the features and train a dense neural network regressor (Keras, Adam optimiser).
- Check the training and validation curves for overfitting.

## Results
- **R² ≈ 0.96** on the test set: the model explains about 96 % of the variance in position.
- Training and test errors decrease together, with no sign of overfitting.

## Run it
The notebook was written for Google Colab and reads the CSV files from Google Drive. To run it locally, replace the `/content/drive/...` paths with your own data folder.

```bash
pip install tensorflow pandas numpy scikit-learn seaborn
```
The notebook is in French.

**Stack:** Python · TensorFlow / Keras · pandas · scikit-learn
