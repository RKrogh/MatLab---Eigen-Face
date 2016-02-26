function [T, D] = covarianceMatrix(imvecs, meanval)
    D = [];
    for i = 1:size(imvecs,2),
       diff = imvecs{i} - meanval;
       D = [D, diff];
    end
    %Dimensionality reduction
    T = (D' * D) ./ (size(imvecs,2));
return