function Vehicle = sm_car_vehcfg_setBrakes(Vehicle,brk_opt)
% Copy data from VDatabase to Vehicle data structure
%
% Copyright 2019-2020 The MathWorks, Inc.

% Load database of vehicle data into local workspace
VDatabase = evalin('base','VDatabase');

switch brk_opt
    case 'Pedal_Sedan_HambaLG',  instance  = 'Pedal_Sedan_HambaLG';
    case 'Pedal_Sedan_Hamba',    instance  = 'Pedal_Sedan_Hamba';
    case 'ABS_Sedan_HambaLG',    instance  = 'ABS_4_Channel_Sedan_HambaLG';
    case 'ABS_Sedan_Hamba',      instance  = 'ABS_4_Channel_Sedan_Hamba';        
    case 'Pedal_Bus_Makhulu',    instance  = 'Pedal_Bus_Makhulu';
    case 'Axle1_None',           instance  = 'Axle1_None';
    case 'None',                 instance  = 'None';
end

% Copy data from database into Vehicle data structure
Vehicle.Brakes = VDatabase.Brakes.(instance);

% Modify config string to indicate configuration has been modified
veh_config_set = strsplit(Vehicle.config,'_');
veh_body =  veh_config_set{1};
Vehicle.config = [veh_body '_custom'];

end