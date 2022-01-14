function exi = showImages(images)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
close all;
exi = 0;
[~,N] = size(images);
for n = 1:N
    imshow(string(images(n)));
    exi = 69;
end
end

