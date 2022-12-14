% Auto generated wrapper function for cosimulation System object

% Generated by MATLAB 9.13 and HDL Coder 4.0

function out = modelo_base_fixpt_sysobj_cosim(in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15,in_16,in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26,in_27,in_28,in_29,in_30)

% Declare persistent variables
persistent cosim_sys_obj;

if isempty(cosim_sys_obj)
   % Instantiate cosimulation System object
   InputSignals = {'in_0','in_1','in_2','in_3','in_4','in_5','in_6','in_7','in_8','in_9','in_10','in_11','in_12','in_13','in_14','in_15','in_16','in_17','in_18','in_19','in_20','in_21','in_22','in_23','in_24','in_25','in_26','in_27','in_28','in_29'};
   OutputSignals = {'out'};
   OutputSigned = false;
   OutputFractionLengths = 0;
   TCLPreSimulationCommand = [....
    'puts "Running Simulink Cosimulation block.";' char(10) ...
    ' puts "Chip Name: --> modelo_base_fixpt";' char(10) ...
    ' puts "Target language: --> Verilog";' char(10) ...
    ' puts "Target directory: --> C:\Users\juand\Documents\MATLAB\Resultados\modelo_base\modelo_base_hdl\modelo_base\hdlsrc";' char(10) ...
    ' puts [clock format [clock seconds]];' char(10) ...
    ''];
   TCLPostSimulationCommand = 'echo "done"';
   PreRunTime = {30,'ns'};
   SampleTime = {10,'ns'};
   HDLSimulator = 'ModelSim';
   cosim_sys_obj = hdlcosim( ...
      'HDLSimulator', HDLSimulator, ...
      'InputSignals', InputSignals, ...
      'OutputSignals',OutputSignals, ...
      'OutputSigned',OutputSigned, ...
      'OutputFractionLengths',OutputFractionLengths, ...
      'TCLPreSimulationCommand',TCLPreSimulationCommand, ...
      'TCLPostSimulationCommand',TCLPostSimulationCommand,...
      'PreRunTime', PreRunTime, ...
      'Connection', {'Shared'}, ...
      'SampleTime',  SampleTime);
end

out = step(cosim_sys_obj,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15,in_16,in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26,in_27,in_28,in_29,in_30);

