% This is an code for image classification 
% It is used in CUHK course (CSCI5280, prof.Jia Jiaya ) 

clear
addpath(genpath('.\lib'));
buildFileList

load testing_list
load training_list
load perm_list

config = fetchIniData('config.ini','section','algorithm');
algorithm = config.algorithm;

image_classification_training(filelist_training,algorithm); % training step
