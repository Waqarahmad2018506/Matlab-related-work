functionCopy('engg387')
% FileNameInput is string taken by function as input
function functionCopy(FileNameInput)

% Exist function check if there is any exict {FileNameInput}.m in the directory
% If there is, then If loof will be excute
if exist([FileNameInput '.m'],'file');
 % Copy file content of first file in second file
 % {FileNameInput}.m content will copied and paste in {useme}{FileNameInput}.m 
    copyfile([FileNameInput '.m'], ['useme_' FileNameInput '.m']);
    
% if there is exict {FileNameInput}.m in the directory then else excute
else
% Take all file from directory which had {FileNameInput} before hyphen    
    files=dir([FileNameInput '_*.m']);
% Arrange all that files in asending order
    files=sort({files.name});
% So the last file will be largest one
    x=length(files);
%largest file content will copied and paste in {useme}{FileNameInput}.m
    copyfile(files{x}, ['useme_' FileNameInput '.m']);
end

end
