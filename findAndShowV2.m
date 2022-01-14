function images = findAndShowV2(color,d)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
close all;
filetypes = {{'.jpg'},{'.bmp'},{'.png'},{'.jpeg'}};
[~,T] = size(filetypes);
images = cell(0);
sizzle = 0;
for t = 1:T
    myFolder = d;
    %fprintf("%d\n", t);
    % Check to make sure that folder actually exists.  Warn user if it doesn't.
    if ~isfolder(myFolder)
        errorMessage = sprintf('Error: The following folder does not exist:\n%s\nPlease specify a new folder.', myFolder);
        uiwait(warndlg(errorMessage));
        myFolder = uigetdir(); % Ask for a new one.
        if myFolder == 0
            % User clicked Cancel
            return;
        end
    end
    % Get a list of all files in the folder with the desired file name pattern.
    filePattern = fullfile(myFolder, strcat('*',string(filetypes(t)))); % Change to whatever pattern you need.
    theFiles = dir(filePattern);
    
    for k = 1 : length(theFiles)
        baseFileName = theFiles(k).name;
        fullFileName = fullfile(theFiles(k).folder, baseFileName);
        %fprintf(1, 'Now reading %s\n', fullFileName);
        % Now do whatever you want with this file name,
        % such as reading it in as an image array with imread()
        image = imread(fullFileName);
        colors = colorID(image);
        if ismember(color,colors)
            sizzle = sizzle + 1;
            images(sizzle) = {fullFileName};
            %figure();
            %imshow(image);
            fprintf("%s\n", fullFileName);
        end
    end
end
fprintf("Finished.\n");
end

