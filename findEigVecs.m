function [eigvecs, eigvals] = findEigVecs(imvecs, T, D)
    [U,eigvals,V] = svd( T );
    eigvecs = [];
    for i = 1:size(imvecs,2),
        eigvec = D * U(:,i);
        eigvec = eigvec ./ sum(eigvec);
        eigvecs = [eigvecs, eigvec];
    end
return