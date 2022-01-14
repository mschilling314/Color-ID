function color = pixelColorID(pixel)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
colo = 0;
if pixel(1) > 0
    colo = colo + 100;
end
if pixel(2) > 0
    colo = colo + 10;
end
if pixel(3) > 0
    colo = colo + 1;
end
switch colo
    case 0
        color = 'black';
    case 1
        color = 'red';
    case 10
        color = 'green';
    case 11
        color = 'teal';
    case 100
        color = 'blue';
    case 101
        color = 'magenta';
    case 110
        color = 'yellow';
    case 111
        color = 'white';
end

end