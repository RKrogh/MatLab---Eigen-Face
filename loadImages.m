function [imvecs,img,imgPath, images] = loadImages()
images = dir('D:\Users\Robert\Dropbox\Dropbox\Exjobb\MAtLAb\face_textures\Male\*.png');  
imgPath = 'D:\Users\Robert\Dropbox\Dropbox\Exjobb\MAtLAb\face_textures\Male\';
img=imread([imgPath images(1).name]);
n=length(images);

for i = 1:n
    img = imread([imgPath images(i).name]);
    imvecs{i} = double(img(:));
end
return