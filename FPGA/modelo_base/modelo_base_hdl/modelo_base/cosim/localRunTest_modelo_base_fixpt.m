function localRunTest_modelo_base_fixpt
   fxptPath = 'C:\Users\juand\Documents\MATLAB\Resultados\modelo_base\modelo_base_hdl\modelo_base\fixpt';
addpath(fxptPath);
cleanupObj = onCleanup(@() rmpath(fxptPath));

   modelo_base_test_cosim;
end

