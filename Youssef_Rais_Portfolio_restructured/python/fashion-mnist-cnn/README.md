# Fashion-MNIST: Dense Network vs CNN

## Goal
Classify 28×28 grayscale images of clothing (10 classes, 60,000 training images) and compare two architectures.

## Method
1. **Data analysis:** class distribution and sample images.
2. **Dense network (MLP):** two hidden layers with dropout to limit overfitting.
3. **Convolutional network:** LeNet-5-inspired architecture.
4. For each model: loss and accuracy curves, confusion matrix, and a look at misclassified images.

## Results
- The CNN exceeds **90 % validation accuracy** and clearly reduces confusion between tops.
- The hardest class is *Shirt*, which the MLP confuses with *T-shirt*, *Pullover* and *Coat*. The MLP gets only 53.6 % of shirts right.

## Run it
```bash
pip install tensorflow matplotlib numpy scikit-learn
jupyter notebook fashion_mnist_mlp_vs_cnn.ipynb
```
The dataset downloads automatically through `keras.datasets`. The notebook is in French.

**Stack:** Python · TensorFlow / Keras · scikit-learn · Matplotlib
