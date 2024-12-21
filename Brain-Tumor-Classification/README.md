# 🧠 Early Detection of Brain Tumor Using MRI and Transfer Learning

This repository contains the implementation of our research project titled **"Early Detection of Brain Tumor Using MRI and Transfer Learning."** The project leverages state-of-the-art deep learning techniques to classify brain tumors efficiently with minimal computational overhead. 

---

## 📝 Abstract

Brain tumors pose significant risks to cognitive functions, making early detection critical for improving patient outcomes. This project introduces three novel multi-class deep learning architectures leveraging **transfer learning** to classify brain tumors from T1-weighted contrast-enhanced MRI images. 

### 🌟 Key Contributions:
- Achieved **99.19% accuracy** using the **Xception model** with optimized batch normalization and learning rates.
- Minimized computational overhead by avoiding preprocessing, segmentation, hybrid models, and augmentation techniques.
- Reduced the number of fully connected layers to streamline computation.
- Fine-tuned the learning rate of the SGD optimizer using **Particle Swarm Optimization (PSO)**.

Our approach demonstrates the potential for early and accurate brain tumor detection, providing a practical solution for neuro-oncologists.

---

## 📊 Dataset

The project utilizes the [Brain Tumor MRI Dataset](https://figshare.com/) consisting of:
- **3064 images**
- **Three tumor types** (e.g., Meningioma, Glioma, and Pituitary tumors)

---

## 🛠️ Libraries Used

The following Python libraries and frameworks are used in the project:
- **TensorFlow/Keras**: For model building and training
- **NumPy**: Numerical computations
- **Pandas**: Data manipulation
- **Matplotlib**: Data visualization
- **OpenCV**: Image processing
- **Scikit-learn**: Data splitting and evaluation

---

## 🧪 Model Architectures

The project implements three transfer learning-based architectures:
1. **InceptionV3**  
   - Achieved **98.36% accuracy** with five-fold cross-validation.

2. **Xception**  
   - Incorporated batch normalization and optimized learning rate for Adam optimizer.  
   - Achieved **99.19% accuracy**.

3. **Xception (with PSO)**  
   - Fine-tuned learning rate of SGD optimizer using **Particle Swarm Optimization**.  
   - Achieved **98.85% accuracy**.

---

## 🚀 Project Highlights

1. **Transfer Learning**: Pre-trained models (InceptionV3, Xception) are fine-tuned for the classification task.
2. **Optimization Techniques**:
   - Batch normalization for improved convergence.
   - Particle Swarm Optimization for learning rate fine-tuning.
3. **Minimal Preprocessing**: Achieves high accuracy without extensive preprocessing or augmentation techniques.
4. **Efficiency**: Streamlined fully connected layers to minimize computational resource usage.

---


## 🐍 Install Required Python Libraries
[![Python](https://img.shields.io/badge/Python-3.7%2B-blue?style=flat-square&logo=python&logoColor=white)](https://www.python.org)

```bash
!pip install numpy pandas matplotlib scikit-learn tensorflow keras opencv-python
```
## 📖 Documentation

[EARLY DETECTION OF BRAIN TUMOR USING MRI AND TRANSFER LEARNING](https://www.worldscientific.com/doi/10.4015/S1016237224300062)


## 🧑‍💻 Authors


- **Shyam Sundar Domakonda**  

  [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/ShyamSundar29) 

  [![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shyam-sundar-domakonda)

## 🤝 Acknowledgments

- Dataset provided by [Figshare](https://figshare.com/articles/dataset/brain_tumor_dataset/1512427)  
  [![Figshare](https://img.shields.io/badge/Figshare-Dataset-blue?style=flat-square&logo=figshare&logoColor=white)](https://figshare.com/articles/dataset/brain_tumor_dataset/1512427)

- Pre-trained models from the [TensorFlow/Keras Applications module](https://keras.io/api/applications/)  
  [![TensorFlow](https://img.shields.io/badge/TensorFlow-Pretrained-green?style=flat-square&logo=tensorflow&logoColor=white)](https://keras.io/api/applications/)