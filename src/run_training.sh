#!/bin/bash
nnUNet_plan_and_preprocess -t 999 -pl3d None
for i in 0 1 2 3 4
do
    nnUNet_train 2d nnUNetTrainerV2 999 $i
done