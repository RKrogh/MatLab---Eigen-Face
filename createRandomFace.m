function [stdev_vec] = createRandomFace(eigvals, eigvecs, imvecs, meanval, img)
    stdev_vec = sqrt(diag(eigvals));
    min_range = 0;
    max_range = 1.5;
    t = ((max_range - min_range)*rand(size(imvecs,2),1)) .* stdev_vec + min_range;
    new_face1 = meanval + (eigvecs * t);
    new_face1 = reshape(new_face1, size(img));

    figure;imagesc(new_face1./255);
    title('Randomized Face');
return