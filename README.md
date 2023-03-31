# Evaluation of nn-Unet architecture for Document Image Binarization

## Installation
### Option 1 - Conda:
1. Install latest conda or miniconda version: https://conda.io/projects/conda/en/latest/user-guide/install/index.html

2. Execute following command in the desired directory: ``conda env create -f environment.yaml``

### Option 2 - Virtual Environment:
1. Install Python 3.10 (recommended), PIP and virtualenv packages.

2. Create a virtual environment and activate it.

3. Activate environment Install requirements: ``pip install requirements.txt``

## Usage
1. Since the architecture has been updated, it is no longer required to transform the images into NIFTI format, and now natively supports PNGs. For new dataset conversion instructions, please refer to the [Dataset conversion](https://github.com/MIC-DKFZ/nnUNet/blob/master/documentation/dataset_format.md) guide.
2. Configure nnU-Net paths using [the following link](https://github.com/MIC-DKFZ/nnUNet/blob/master/documentation/setting_up_paths.md).
3. Run the following command ```nnUNetv2_plan_and_preprocess -d DATASET_ID --verify_dataset_integrity``` where the dataset ID of this work is 900.
4. To run the model training, edit accordingly ```src/run_training.sh``` and execute it using bash. This will automatically run all 5 fold cross validation tasks. For multi-gpu execution, please refer to the [documentation](https://github.com/MIC-DKFZ/nnUNet/blob/master/documentation/how_to_use_nnunet.md). After the training, run ```nnUNetv2_find_best_configuration DATASET_NAME_OR_ID -c CONFIGURATIONS```.
5. For inference, run ```nnUNetv2_predict -i INPUT_FOLDER -o OUTPUT_FOLDER -d DATASET_NAME_OR_ID -c CONFIGURATION --save_probabilities```


## References
**nnU-Net: a self-configuring method for deep learning-based biomedical image segmentation**: https://www.nature.com/articles/s41592-020-01008-z

**A Fair Evaluation of Various Deep Learning-Based Document Image Binarization Approaches:** https://link.springer.com/chapter/10.1007/978-3-031-06555-2_52
