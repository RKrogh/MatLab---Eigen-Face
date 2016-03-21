function [] = projectFace(img, imgPath, images, meanval, eigvecs, imvecs)
    %Projecting existing face on eigen vectors
    ext_img=imread([imgPath images(1).name]);
    ext_vec = double(ext_img(:));
    diff_ext_img = ext_vec - meanval;
    weighted_vector = eigvecs' * diff_ext_img;
    blargh = eigvecs' * eigvecs
    new_proj_ext_img = [zeros(size(meanval))];
    new_proj_ext_img = [meanval];
    for i = 1:size(imvecs,2),
        new_proj_ext_img = [new_proj_ext_img + (eigvecs(:,i) .* weighted_vector(i))];
    end
    new_proj_ext_img = reshape(new_proj_ext_img, size(img));
    figure;imagesc(new_proj_ext_img./255);
    title('Projected Face');
end