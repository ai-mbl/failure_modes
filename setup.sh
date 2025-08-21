# create mamba environment and activate it
conda create -n 06-failure-modes -y python
eval "$(conda shell.bash hook)"
conda activate 06-failure-modes

# install the ipython kernel for running jupyterlab
conda install -y ipykernel ipywidgets

# for TAs to format the notebooks
# conda install jupytext black nbconvert

# install libraries needed for the exercise
# model interpretability
pip install captum
# classification package
pip install git+https://github.com/adjavon/classification.git
# UNET package from dlmbl
pip install git+https://github.com/dlmbl/dlmbl-unet.git
# computer vision deep learning
pip install torchvision
# progress bars
pip install tqdm
# scientific computing
pip install scipy
# machine learning
pip install scikit-learn
# data tables
pip install pandas
# visualization/graphing
pip install seaborn

# download data needed for the exercise
python download_mnist.py

conda deactivate
