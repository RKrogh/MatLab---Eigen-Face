clear;clc;close all;
[imvecs,img,imgPath, images] = loadImages();
meanval = meanValue(imvecs);
[T, D] = covarianceMatrix(imvecs, meanval);
[eigvecs, eigvals] = findEigVecs(imvecs, T, D);
eigenfaces = createEigenFaces(eigvecs, imvecs, img); 

%%
[mean_image] = createAverageFace(meanval, img);
%%
[stdev_vec] = createRandomFace(eigvals, eigvecs, imvecs, meanval, img);
%%
vectorComparison(meanval, eigvecs, stdev_vec, img, mean_image);
%%
projectFace(img, imgPath, images, meanval, eigvecs, imvecs);