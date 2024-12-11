Depression is a mental disorder that might cause self-harm and suicidal thoughts if the level
of depression reaches the refractory or recurrent depressive disorder stage. Depression can be catego-
rized into four different levels that are defined based on a psychometric called Beck Depression Inventory
(BDI): minimal, mild, moderate, and severe. Depression level is important to narrow down the selection
of depression therapy. There are several ways to treat depression and among them medications, Elec-
troconvulsive therapy (ECT), repetitive Transcranial Magnetic Stimulation (rTMS), a combination of
medication and rTMS. In the minimal depression level, an antidepressant medication is the best option
such as, tricyclic antidepressants (TCAs), monoamine-oxidase inhibitor (MAOI), and Selective serotonin
reuptake inhibitors (SSRIs). This study introduces a deep learning (DL) architecture trained on time
frequency images derived from EEG signals to predict the patient’s respondent status to SSRI antide-
pressant. We introduce an efficient framework that integrate image technique with stat-of-the-art DL
models. Various time-frequency methods, including wavelet synchrosqueezed transform (WSST), Con-
tinous wavelet transform (CWT), and Discrete wavelet transform (DWT), are explored to convert EEG
signals into time-frequency images. Among these methods, WSST demonstrates superior performance
in extracting relevant information encoded within EEG signals, outperforming CWT and DWT. Time-
frequency images generated using WSST contribute to the achievement of an accuracy level of 98.89%
when fed into a proposed lightweight custom CNN architecture. The results show that WSST is pow-
erful in capturing crucial signal features in detecting the outcome of depression therapy. Our proposed
architecture is simple and computationally efficient, despite its simple design, outperforms more com-
plex architectures such as, EfficientNetV2L, ResNet152V2, Xception, DenseNet201, and MobileNetV2.
The proposed framework outperforms other models in accuracy, precision, recall, and specificity met-
rics utilizing 5-fold cross-validation strategy. These metrics demonstrate the robustness of our proposed
model in predicting SSRI patients’ responses. Our results show that DL might be used to enhance the
clinical decision-making, leading to more tailored treatments and improved quality of life for depression
patients through personalized medicine.
