function colors = colorID(img)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[R,C,~] = size(img);
colors = cell(R*C,1);

for r = 1:R
    for c = 1:C
        col = pixelColorID(img(r,c,:));
        colors((r-1)*C + c) = {col};
    end
end
colors = unique(colors);

end

