% Auto generated function to execute the generated cosimulation test bench
% 
% Generated by MATLAB 9.13 and HDL Coder 4.0

function run_modelo_base_fixpt_cosim

% Launch HDL simulator
disp('### Launching ModelSim for cosimulation ');
launch_modelo_base_fixpt_cosim;

% Clear persistent variables before simulation
l_clearPersistentVariable;

% Clear persistent variables after simulation
onCleanupObj = onCleanup(@() l_clearPersistentVariable);

% Add current working directory to search path
savedPathVar = addpath(pwd);
restorePathObj = onCleanup(@() path(savedPathVar));

% Run generated test bench
disp('### Simulating generated test bench ');
% Exercise the compiled version of modelo_base_wrapper_fixpt_cosim in the generated test bench.
% To debug the test bench with the original function "modelo_base_wrapper_fixpt_cosim",
% replace the next line with "modelo_base_test_cosim"
coder.runTest('localRunTest_modelo_base_fixpt','modelo_base_wrapper_fixpt_cosim');
% To recompile MATLAB function "modelo_base_wrapper_fixpt_cosim",
% run the re-compilation function "localRecompile_modelo_base_wrapper_fixpt_cosim".
disp('### Finished Simulation');

end

function l_clearPersistentVariable
% Clear reference DUT function
clear modelo_base_fixpt;

% Clear cosimulation System object wrapper function
clear modelo_base_fixpt_sysobj_cosim;

% Clear cosimulation function
clear modelo_base_fixpt_cosim;

% Clear generated MEX function
clear modelo_base_wrapper_fixpt_cosim_mex

end

