# Worksite-Safety-Monitoring-with-Deep-Learning

## Project Overview

This project is focused on building a machine learning model to classify worksite images as either "safe" or "unsafe" based on the presence of safety measures like protective gear, proper safety protocols, and hazard-free environments. The model is developed using Convolutional Neural Networks (CNNs), which are well-suited for image classification tasks.

The dataset used in this project is sourced from Kaggle's **Worksite Safety Monitoring Dataset**, which contains images labeled as "safe" or "unsafe." This dataset serves as a foundation for developing automated systems to monitor safety at worksites in real-time.

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Requirements](#requirements)
- [Model Architecture](#model-architecture)
- [Training the Model](#training-the-model)
- [Evaluation and Results](#evaluation-and-results)
- [Conclusion](#conclusion)
- [License](#license)

## Dataset

The dataset used for this project is from Kaggle and consists of images depicting different worksite environments. These images are classified into two categories:
- **Safe**: Images of workers using safety equipment and adhering to proper safety protocols.
- **Unsafe**: Images where safety standards are not followed, potentially exposing workers to hazards.

### Dataset Structure
The data is divided into three folders:
- **train**: Contains training images, further split into `safe` and `unsafe` directories.
- **valid**: Contains validation images, similarly split into `safe` and `unsafe`.
- **test**: Contains test images to evaluate the model's final performance.

```
dataset/
    ├── train/
    │   ├── safe/
    │   └── unsafe/
    ├── valid/
    │   ├── safe/
    │   └── unsafe/
    └── test/
        ├── safe/
        └── unsafe/
```

You can access the dataset on Kaggle [here](https://www.kaggle.com).

## Requirements

Before running the code, make sure you have the following dependencies installed:
- Python 3.x
- TensorFlow (2.x)
- Matplotlib
- NumPy
- scikit-learn
- Kaggle (for downloading the dataset)

You can install the required dependencies using the following command:
```bash
pip install -r requirements.txt
```


## Model Architecture

The model is built using a Convolutional Neural Network (CNN) architecture. The architecture consists of the following layers:

1. **Rescaling Layer**: Rescales the input images to normalize pixel values.
2. **Convolutional Layers**: Apply convolution operations to extract features from images.
3. **Max-Pooling Layers**: Reduces spatial dimensions to focus on important features.
4. **Flatten Layer**: Converts the 2D feature maps into a 1D vector.
5. **Fully Connected Dense Layers**: Processes the extracted features and classifies the images into either the "safe" or "unsafe" category.

### Final Model Summary
The model's total parameter count is approximately **29.7 million**, with a combination of trainable parameters (about **14.8 million**) and non-trainable parameters.

## Training the Model

The model is trained using the training dataset, validated using the validation dataset, and then evaluated using the test dataset. The following code shows how to train and evaluate the model:


## Evaluation and Results

After training the model, its performance is evaluated on the test dataset. The accuracy of the model is used as a metric to measure how well the model generalizes to unseen images.



## Conclusion

This project demonstrates how deep learning can be applied to real-world scenarios, such as monitoring worksite safety. The trained model can be used for automatic safety monitoring in industries, helping improve worker safety by detecting unsafe conditions.

### Future Improvements:
- **Data Augmentation**: Adding more diverse images to increase model robustness.
- **Model Optimization**: Exploring other architectures like ResNet or EfficientNet for potentially better performance.
- **Real-time Monitoring**: Integrating the model into a real-time system to continuously monitor worksites.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
