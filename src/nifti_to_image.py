from batchgenerators.utilities.file_and_folder_operations import *
from file_conversions import convert_2d_segmentation_nifti_to_img

if __name__ == "__main__":

    input_path = '../inference/output'
    output_path = '../inference/image'

    nifti_images = subfiles(input_path, join=False)
    
    for img in nifti_images:
        output_name = img.split('.')[0] + '.tiff'
        img_input_path = join(input_path, img)
        img_output_path = join(output_path, output_name)

        convert_2d_segmentation_nifti_to_img(img_input_path, img_output_path)
