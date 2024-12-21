# 🧠 Early Detection of Brain Tumor Using MRI and Transfer Learning

This repository contains the implementation of our research project titled **"Early Detection of Brain Tumor Using MRI and Transfer Learning."** The project leverages state-of-the-art deep learning techniques to classify brain tumors efficiently with minimal computational overhead. 

---

## 📝 Abstract

Brain tumors pose significant risks to cognitive functions, making early detection critical for improving patient outcomes. This project introduces three novel multi-class deep learning architectures leveraging **transfer learning** to classify brain tumors from T1-weighted contrast-enhanced MRI images. 

### Key Contributions:
- Achieved **99.19% accuracy** using the **Xception model** with optimized batch normalization and learning rates.
- Minimized computational overhead by avoiding preprocessing, segmentation, hybrid models, and augmentation techniques.
- Reduced the number of fully connected layers to streamline computation.
- Fine-tuned the learning rate of the SGD optimizer using **Particle Swarm Optimization (PSO)**.

Our approach demonstrates the potential for early and accurate brain tumor detection, providing a practical solution for neuro-oncologists.

---

## 📊 Dataset

The project utilizes the [Figshare T1-weighted contrast-enhanced MRI dataset](https://figshare.com/) consisting of:
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


## Install required Python libraries
```bash
!pip install numpy pandas matplotlib scikit-learn tensorflow keras opencv-python
```
## Documentation

[EARLY DETECTION OF BRAIN TUMOR USING MRI AND TRANSFER LEARNING](https://www.worldscientific.com/doi/10.4015/S1016237224300062)


## Authors

- [Shyam Sundar Domakonda](https://github.com/ShyamSundar29)

