# Time Frequency Images as Predictors for Depressed Patients’ Respondent Status to SSRI Antidepressant

This repository contains the implementation of our research project titled **"Time-Frequency Images as Predictors for Depressed Patients’ Respondent Status to SSRI Antidepressant."**  The project utilizes deep learning models to analyze EEG-derived time-frequency images and predict patient responses to SSRIs, offering a novel approach for personalized depression treatment.
---
## 📝 Description
Depression is a mental disorder that might cause self-harm and suicidal thoughts if the level of depression reaches the refractory or recurrent depressive disorder stage. Depression can be categorized into four different levels defined by the Beck Depression Inventory (BDI): minimal, mild, moderate, and severe. The level of depression is essential in narrowing down the selection of therapy options. 

This study introduces a Deep Learning (DL) architecture trained on time-frequency images derived from EEG signals to predict the patient’s respondent status to SSRI antidepressant therapy. We propose an efficient framework that integrates image techniques with state-of-the-art DL models. Among various time-frequency methods—including Wavelet Synchrosqueezed Transform (WSST), Continuous Wavelet Transform (CWT), and Discrete Wavelet Transform (DWT)—WSST demonstrated superior performance in capturing crucial features from EEG signals.

The proposed framework outperformed advanced architectures like EfficientNetV2L, ResNet152V2, Xception, DenseNet201, and MobileNetV2, achieving an accuracy level of **98.89%** with a custom lightweight CNN architecture. 

The results underscore how DL models can improve clinical decision-making, leading to tailored treatments and enhanced quality of life for depression patients.

---

## 🌟 Key Features

- **State-of-the-art Time-Frequency Analysis**: WSST, CWT, and DWT for EEG signal processing.
- **Custom Lightweight CNN Architecture**: Achieved accuracy of 98.89%.
- **5-Fold Cross-Validation**: Ensures robustness with metrics like accuracy, precision, recall, and specificity.
- **Comparative Analysis**: Outperformed complex architectures like ResNet and EfficientNet.
- **Clinical Impact**: Enhances decision-making for personalized depression treatment.

---
## 📊 Dataset

The project utilizes the [MDD Patients and Healthy Controls EEG Dataset](https://figshare.com/articles/dataset/EEG_Data_New/4244171), which consists of:

- **30 individuals diagnosed with Major Depressive Disorder (MDD)** and **healthy controls**
- **EEG data recorded** during pretreatment resting-state with eyes closed (EC) 
- **19-channel EEG recordings** based on the international 10–20 electrode positioning system
- **5-minute duration** for each EEG recording
- **Sampling rate** of **256 Hz**
- **Frequency range** band-pass filtered from **0.5 to 70 Hz**
- **Power line noise removal** using a **50 Hz Notch filter**
- **12 patients** with a positive response to antidepressant treatment (defined as at least a 50% reduction in Beck Depression Inventory scores)

The dataset was collected from the Hospital University Sains Malaysia in Kelantan, Malaysia, and received approval from their human ethics committee.


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
## 🐍 Install Required Python Libraries
[![Python](https://img.shields.io/badge/Python-3.7%2B-blue?style=flat-square&logo=python&logoColor=white)](https://www.python.org)

```bash
!pip install numpy pandas matplotlib scikit-learn tensorflow keras opencv-python
```

---
## 🧪 Model Architecture

The CNN model for predicting SSRI response consists of the following layers:

- **Convolutional Layers**: Four convolutional layers with ReLU activation, batch normalization, and (3, 3) kernel size. The number of filters are 4, 6, 8, and 12, respectively.
- **Dropout**: A dropout layer with a rate of 0.25 to mitigate overfitting.
- **Fully Connected Layer**: Dense layer with a sigmoid activation function for binary classification.
- **Output Layer**: A single neuron with sigmoid activation for binary output.

### Training Setup:
- **Optimizer**: Adam (learning rate: 0.0001)
- **Loss Function**: Binary cross-entropy
- **Regularization**: Dropout (rate = 0.25), Early stopping (patience = 3)
- **Cross-Validation**: 5-fold cross-validation with 10 epochs per fold

------

## 📈 Results and Performance

- **Accuracy**: 98.89%
- **Precision**:git add 97.5%
- **Recall**: 96.8%
- **Specificity**: 99.1%

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

---

## 🧑‍💻 Authors

- **Shyam Sundar Domakonda**  

  [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/ShyamSundar29) 

  [![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shyam-sundar-domakonda)

---
## 🤝 Acknowledgments

- Dataset provided by [Figshare](https://figshare.com/articles/dataset/EEG_Data_New/4244171)  
  [![Figshare](https://img.shields.io/badge/Figshare-Dataset-blue?style=flat-square&logo=figshare&logoColor=white)](https://figshare.com/articles/dataset/EEG_Data_New/4244171)

- Wavelet Synchrosqueezing from [MathWorks](https://www.mathworks.com/help/wavelet/gs/wavelet-synchrosqueezing.html)  
  [![Wavelet Synchrosqueezing](https://img.shields.io/badge/Wavelet_Synchrosqueezing-blue?style=flat-square)](https://www.mathworks.com/help/wavelet/gs/wavelet-synchrosqueezing.html)

- Continuous Wavelet Transforms from [MathWorks](https://www.mathworks.com/help/wavelet/continuous-wavelet-transforms.html)  
  [![Continuous Wavelet](https://img.shields.io/badge/Continuous_Wavelet-green?style=flat-square)](https://www.mathworks.com/help/wavelet/continuous-wavelet-transforms.html)

- Discrete Wavelet Transform from [MathWorks](https://www.mathworks.com/help/wavelet/ref/dwt.html)  
  [![Discrete Wavelet](https://img.shields.io/badge/Discrete_Wavelet-orange?style=flat-square)](https://www.mathworks.com/help/wavelet/ref/dwt.html)

---
