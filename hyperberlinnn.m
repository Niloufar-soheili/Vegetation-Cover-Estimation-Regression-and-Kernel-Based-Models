clc
clear all

Image       = enviread('Hymap_Berlin-B_Image');
GroundTruth = enviread('Hymap_Berlin-B_Regression-GroundTruth');
Mask        = enviread('Hymap_Berlin-B_Mask');
Training    = enviread('Hymap_Berlin-B_Regression-Training-Sample');
Validation  = enviread('Hymap_Berlin-B_Regression-Validation-Sample');
Estimation  = enviread('Hymap_Berlin-B_Regression-Estimation');


% RegressionLabels  = enviread('RegressionLabels');
GroundTruth = GroundTruth .* Mask;

figure,
Band_num = 26;%73;15
ImageSub(:,:,1) = Image(:,:,Band_num);
% ImageSub(:,:,2) = Image(:,:,73);
% ImageSub(:,:,3) = Image(:,:,15);


[h,w,nBand] = size(Image);
Train   = Training .*Mask;
Test  = Validation .*Mask;
GroundTruth = GroundTruth .*Mask;
ImageSub    = ImageSub .*Mask;

for i=1:nBand
    Image(:,:,i) = Image(:,:,i) .*Mask;
end


% Converting
InputImage1D       = hyperConvert2d(Image)';
GroundTruthImage1D = hyperConvert2d(GroundTruth)';
Train1D         = hyperConvert2d(Training)';
Test1D       = hyperConvert2d(Validation)';



InputImage1D       = hyperConvert2d(Image)';
Train1D         = hyperConvert2d(Train)';
Test1D       = hyperConvert2d(Test)';



% Loading Image & GroundTruth
Image              = enviread('Hymap_Berlin-B_Image');
GroundTruth        = enviread('Hymap_Berlin-B_Regression-GroundTruth');


% Converting
InputImage1D       = hyperConvert2d(Image)';
GroundTruthImage1D = hyperConvert2d(GroundTruth)';

