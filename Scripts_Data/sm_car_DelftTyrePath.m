function path_str = sm_car_DelftTyrePath(DelftTyrePathMLTbx)
% Function to get relevant folders for sm_car_lib
% Copyright 2019-2020 The MathWorks, Inc.

path_str1 = strrep(DelftTyrePathMLTbx,...
        [filesep 'MATLAB' filesep 'Toolbox'],...
        [filesep 'Road data files']);
    
path_str2 = strrep(DelftTyrePathMLTbx,...
        [filesep 'MATLAB' filesep 'Toolbox'],...
        [filesep 'Tyre property files']);
    
path_str3 = genpath(strrep(DelftTyrePathMLTbx,...
        [filesep 'MATLAB' filesep 'Toolbox'],...
        [filesep 'OpenCRG']));
    
path_str = [path_str1 ';' path_str2 ';' path_str3];