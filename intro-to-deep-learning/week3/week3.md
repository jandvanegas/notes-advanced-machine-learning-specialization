# Week3
## Introduction to CNN
### Motivation for convolutional layers

![](image_1.jpg)

![](image_2.jpg)

![](image_3.jpg)

![](image_4.jpg)

![](image_5.jpg)

![](image_6.jpg)

![](image_7.jpg)

![](image_8.jpg)

![](image_9.jpg)

![](image_10.jpg)

![](image_11.jpg)

![](image_12.jpg)

![](image_13.jpg)

![](image_14.jpg)

![](image_15.jpg)

![](image_16.jpg)

![](image_17.jpg)

![](image_18.jpg)

![](image_19.jpg)

![](image_20.jpg)

![](image_21.jpg)

![](image_22.jpg)

![](image_23.jpg)

![](image_24.jpg)

![](image_25.jpg)

![](image_26.jpg)

![](image_27.jpg)

![](image_28.jpg)

### Our first CNN Architecture

![](image_29.jpg)

![](image_30.jpg)

![](image_31.jpg)

![](image_32.jpg)

![](image_33.jpg)

![](image_34.jpg)

![](image_35.jpg)

![](image_36.jpg)

![](image_37.jpg)

![](image_38.jpg)

![](image_39.jpg)

![](image_40.jpg)

![](image_41.jpg)

![](image_42.jpg)

![](image_43.jpg)

![](image_44.jpg)

![](image_45.jpg)

![](image_46.jpg)

![](image_47.jpg)

![](image_48.jpg)

## Modern CNNs
### Training tips and tricks for deep CNNs

![](image_49.jpg)

![](image_50.jpg)

![](image_51.jpg)

![](image_52.jpg)

![](image_53.jpg)

![](image_54.jpg)

![](image_55.jpg)

![](image_56.jpg)

![](image_57.jpg)

![](image_58.jpg)

![](image_59.jpg)

![](image_60.jpg)

![](image_61.jpg)

![](image_62.jpg)

![](image_63.jpg)

![](image_64.jpg)

![](image_65.jpg)

![](image_66.jpg)

![](image_67.jpg)

![](image_68.jpg)

![](image_69.jpg)

![](image_70.jpg)

![](image_71.jpg)

![](image_72.jpg)

![](image_73.jpg)

![](image_74.jpg)

![](image_75.jpg)

![](image_76.jpg)

![](image_77.jpg)

![](image_78.jpg)

### Overview of modern CNN architectures

![](image_79.jpg)

![](image_80.jpg)

![](image_81.jpg)

![](image_82.jpg)

![](image_83.jpg)

![](image_84.jpg)

![](image_85.jpg)

![](image_86.jpg)

![](image_87.jpg)

![](image_88.jpg)

![](image_89.jpg)

![](image_90.jpg)

![](image_91.jpg)

### Jupyter notebook - Offline Instructions
[Link](https://github.com/hse-aml/intro-to-dl/blob/master/README.md)

Coursera Jupyter Environment can be slow if many learners use it heavily. Our tasks are compute-heavy and we recommend to run them on your hardware for optimal performance.

You will need a computer with at least 4GB of RAM.

There're two options to setup the Jupyter Notebooks locally: Docker container and Anaconda.

#### Docker container option (best for Mac/Linux)
Follow the instructions on https://hub.docker.com/r/zimovnov/coursera-aml-docker/ to install Docker container with all necessary software installed.

After that you should see a Jupyter page in your browser.

#### Anaconda option (best for Windows)
We highly recommend to install docker environment, but if it's not an option, you can try to install the necessary python modules with Anaconda.

First, install Anaconda with Python 3.5+ from here.

Download conda_requirements.txt from here.

Open terminal on Mac/Linux or "Anaconda Prompt" in Start Menu on Windows and run:
```
conda config --append channels conda-forge
conda config --append channels menpo
conda install --yes --file conda_requirements.txt
```
To start Jupyter Notebooks run jupyter notebook on Mac/Linux or "Jupyter Notebook" in Start Menu on Windows.

After that you should see a Jupyter page in your browser.


#### Prepare resources inside Jupyter Notebooks (for local setups only)
Click New -> Terminal and execute: git clone https://github.com/hse-aml/intro-to-dl.git On Windows you might want to install Git. You can also download all the resources as zip archive from GitHub page.

Close the terminal and refresh Jupyter page, you will see intro-to-dl folder, go there, all the necessary notebooks are waiting for you.

First you need to download necessary resources, to do that open download_resources.ipynb and run cells for Keras and your week.

Now you can open a notebook for the corresponding week and work there just like in Coursera Jupyter Environment.

#### Using GPU for offline setup (for advanced users)
* If you have a Linux host you can try these instructions for Docker: https://github.com/ZEMUSHKA/coursera-aml-docker#using-gpu-in-your-container-linux-hosts-only
* The easiest way is to go with Anaconda setup, that doesn't need virtualization and thus works with a GPU on all platforms (including Windows and Mac). You will still have to install NVIDIA GPU driver, CUDA toolkit and CuDNN (requires registration with NVIDIA) on your host machine in order for TensorFlow to work with your GPU: https://www.tensorflow.org/versions/r1.2/install/install_linux#nvidia_requirements_to_run_tensorflow_with_gpu_support It can be hard to follow, so you might choose to stick to a CPU version, which is also fine for the purpose of this course.

#### Docker on linux 

Run 
```
docker pull zimovnov/coursera-aml-docker
docker run -itp 127.0.0.1:8080:8080 --name coursera-aml-1 zimovnov/coursera-aml-docker 
```
## Applications of CNNs
### Learning new tasks with pre-trained CNNs


![](image_92.jpg)

![](image_93.jpg)

![](image_94.jpg)

![](image_95.jpg)

![](image_96.jpg)

![](image_97.jpg)

![](image_98.jpg)

![](image_99.jpg)

![](image_100.jpg)

![](image_101.jpg)

![](image_102.jpg)

![](image_103.jpg)

![](image_104.jpg)

![](image_105.jpg)

![](image_106.jpg)

![](image_107.jpg)

![](image_108.jpg)

![](image_109.jpg)

### A glimpse of other Computer Vision tasks

![](image_110.jpg)

![](image_111.jpg)

![](image_112.jpg)

![](image_113.jpg)

![](image_114.jpg)

![](image_115.jpg)

![](image_116.jpg)

![](image_117.jpg)

![](image_118.jpg)

![](image_119.jpg)

![](image_120.jpg)

![](image_121.jpg)

![](image_122.jpg)

![](image_123.jpg)

![](image_124.jpg)

![](image_125.jpg)

![](image_126.jpg)

![](image_127.jpg)

![](image_128.jpg)

![](image_129.jpg)

![](image_130.jpg)

![](image_131.jpg)

![](image_132.jpg)

![](image_133.jpg)

![](image_134.jpg)

![](image_135.jpg)

![](image_136.jpg)

![](image_137.jpg)

![](image_138.jpg)
