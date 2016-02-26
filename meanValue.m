function meanval = meanValue(imvecs, imageNr)
    %Creates the mean value from our images.
    sumvec=imvecs{1};

    for i = 2:(size(imvecs,2))
        sumvec = sumvec + imvecs{i};
    end
    meanval = sumvec ./(size(imvecs,2));
return