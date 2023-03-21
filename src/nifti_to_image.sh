#!/bin/bash
dir=../inference/output
for image in "$dir"/*
do
  name=$(echo $image | awk -F 'output/' '{print $2}')
  med2image -i $image -d $dir -o $name".png"
done




