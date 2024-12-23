# Time Frequency Images as Predictors for Depressed Patients’ Respondent Status to SSRI Antidepressant

![Project Logo](https://via.placeholder.com/150)

---

## 📝 Description
Depression is a mental disorder that might cause self-harm and suicidal thoughts if the level of depression reaches the refractory or recurrent depressive disorder stage. Depression can be categorized into four different levels defined by the Beck Depression Inventory (BDI): minimal, mild, moderate, and severe. The level of depression is essential in narrowing down the selection of therapy options. 

This study introduces a Deep Learning (DL) architecture trained on time-frequency images derived from EEG signals to predict the patient’s respondent status to SSRI antidepressant therapy. We propose an efficient framework that integrates image techniques with state-of-the-art DL models. Among various time-frequency methods—including Wavelet Synchrosqueezed Transform (WSST), Continuous Wavelet Transform (CWT), and Discrete Wavelet Transform (DWT)—WSST demonstrated superior performance in capturing crucial features from EEG signals.

The proposed framework outperformed advanced architectures like EfficientNetV2L, ResNet152V2, Xception, DenseNet201, and MobileNetV2, achieving an accuracy level of **98.89%** with a custom lightweight CNN architecture. 

The results underscore how DL models can improve clinical decision-making, leading to tailored treatments and enhanced quality of life for depression patients.

---

## 📊 Key Features

- **State-of-the-art Time-Frequency Analysis**: WSST, CWT, and DWT for EEG signal processing.
- **Custom Lightweight CNN Architecture**: Achieved accuracy of 98.89%.
- **5-Fold Cross-Validation**: Ensures robustness with metrics like accuracy, precision, recall, and specificity.
- **Comparative Analysis**: Outperformed complex architectures like ResNet and EfficientNet.
- **Clinical Impact**: Enhances decision-making for personalized depression treatment.

---

## 🛠️ Libraries and Tools Used

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-00BFFF?style=for-the-badge&logo=plotly&logoColor=white)
![Keras](https://img.shields.io/badge/Keras-D00000?style=for-the-badge&logo=keras&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-3776AB?style=for-the-badge&logo=python&logoColor=white)

- **Core Libraries**: NumPy, Pandas, Matplotlib, Seaborn.
- **Deep Learning**: TensorFlow, Keras.
- **Model Optimization**: Adam optimizer, early stopping, learning rate scheduler.
- **Evaluation**: Confusion matrix, classification report, ROC curve.
- **Others**: Stratified K-Fold cross-validator, time utilities.

---

## 📂 Project Structure

```
├── data                # Dataset and preprocessing scripts
├── models              # Trained models and architecture definitions
├── notebooks           # Jupyter notebooks for experiments
├── src                 # Source code for model training and evaluation
├── results             # Model evaluation metrics and visualizations
└── README.md           # Project documentation
```

---

## 🚀 Installation and Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/project-name.git
   ```

2. Navigate to the project directory:
   ```bash
   cd project-name
   ```

3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Run the training script:
   ```bash
   python src/train_model.py
   ```

---

## 📈 Results and Performance

- **Accuracy**: 98.89%
- **Precision**: 97.5%
- **Recall**: 96.8%
- **Specificity**: 99.1%

### Confusion Matrix

![Confusion Matrix](https://via.placeholder.com/500)

### ROC Curve

![ROC Curve](https://via.placeholder.com/500)

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 📧 Contact

For questions or collaboration opportunities:

- Email: your.email@example.com
- LinkedIn: [Your Name](https://linkedin.com/in/yourprofile)
- GitHub: [YourUsername](https://github.com/yourusername)

![Footer Logo](https://via.placeholder.com/100)

---
