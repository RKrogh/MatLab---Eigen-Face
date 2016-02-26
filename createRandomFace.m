function [stdev_vec] = createRandomFace(eigvals, eigvecs, imvecs, meanval, img)
    stdev_vec = sqrt(diag(eigvals));
    t = (100 * rand(size(imvecs,2),1) - 50) .* stdev_vec;
    new_face1 = meanval + (eigvecs * t);
    new_face1 = reshape(new_face1, size(img));

    figure;imagesc(new_face1./255);
    title('Random Face')
return