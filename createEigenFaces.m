function [eigenfaces] = createEigenFaces(eigvecs, imvecs, img)
    for i = 1:size(imvecs,2),
        eigface =  reshape(eigvecs( : , i), size(img));
        eigface = eigface - min(min(min((eigface))));
        eigface = eigface ./ max(max(max((eigface))));
        eigenfaces{i}=eigface;
        %figure;imagesc(eigface);
    end
return