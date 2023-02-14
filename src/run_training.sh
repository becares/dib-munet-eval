#!/bin/bash
nnUNet_plan_and_preprocess -t 900 -pl3d None
for i in 0 1 2 3 4
do
    nnUNet_train 2d nnUNetTrainerV2 900 $i
done