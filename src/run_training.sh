#!/bin/bash
nnUNet_plan_and_preprocess -t 900 -pl3d None
for i in 0 1 2 3 4
do
    nnUNet_train 2d nnUNetTrainerV2 900 $i
done
nnUNet_find_best_configuration -m 2d 3d_fullres 3d_lowres 3d_cascade_fullres -t 900
nnUNet_predict -i /home/ertozi/Documents/Master/S3/ProjCV/inference/input -o /home/ertozi/Documents/Master/S3/ProjCV/inference/output -t 900 -m 2d
