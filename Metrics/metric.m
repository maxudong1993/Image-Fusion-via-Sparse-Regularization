clear all;
addpath('metrics/MI/');

% read image info;
% origImgs  = cell(1,totalImg);
% 
% 
% for k = 1:totalImg
%     origImgs{k} = im2double(imread([folder, files(k).name]));
% end

 input1 = im2double(imread('/Users/xudongma/phd/phd/code/Image-Fusion-via-Sparse-Regularization/data/clocks/clockA.jpg'));
 input2= im2double(imread('/Users/xudongma/phd/phd/code/Image-Fusion-via-Sparse-Regularization/data/clocks/clockB.jpg'));

% input1 = im2double(imread('\\ads.bris.ac.uk\filestore\myfiles\students\eexjc\Desktop\datafusion\1810i.bmp'));
% input2 = im2double(imread('\\ads.bris.ac.uk\filestore\myfiles\students\eexjc\Desktop\datafusion\1810v.bmp'));


    origImgs(:,:,1) = input1(:,:,1);
    origImgs(:,:,2) = input2(:,:,1);
    
%fusedImg = im2double(imread('\\ads.bris.ac.uk\filestore\myfiles\students\eexjc\Desktop\fusion sr code\fused&sred\0010srfuse.bmp'));

fusedImg = im2double(imread('/Users/xudongma/phd/phd/code/Image-Fusion-via-Sparse-Regularization/data/results/clocks/clockslam0.005.png'));

% % quality assessment
%     % ---------------------------------------------------------------------
%     % mutual information
%     [quality_mi(method),quality_minorm(method)] = mif(origImgs,fusedImg);
%     % Petrovic and Xydeas Metric
%     quality_petrovic(method) = petmetric(origImgs, fusedImg);
    % Piella's Quality Index
    Pe = petmetric(origImgs, fusedImg)
    MI = mif(origImgs,fusedImg)
    Q = imqmet(origImgs, fusedImg)
    CM = Cvejic_metric(origImgs,fusedImg)
     
%       Cvejic_metric(origImgs,fusedImg)
    
%     quality_piella(method) = imqmet(origImgs, fusedImg);
%     % Cvejic's Quality Index
%     quality_cvejic(method) = Cvejic_metric(origImgs,fusedImg);