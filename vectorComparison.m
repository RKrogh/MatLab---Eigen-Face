function [] = vectorComparison(meanval, eigvecs, stdev_vec, img, mean_image)
    t = zeros(17,1);
    eig_face_index = 3;
    t(eig_face_index) = 1000;
    t = t.*stdev_vec;

    new_face1 = meanval + (eigvecs * t);
    new_face1 = reshape(new_face1, size(img));

    new_face2 = meanval - (eigvecs * t);
    new_face2 = reshape(new_face2, size(img));

    figure;
    title('PCA Comparison')
    subplot(3,1,1), subimage(new_face1./255)
    subplot(3,1,2), subimage(mean_image./255)
    subplot(3,1,3), subimage(new_face2./255)
return