function [mean_image] = createAverageFace(meanval, img)
    mean_image = reshape(meanval, size(img));
    figure;imagesc(mean_image./255);
    title('Average Face')
return