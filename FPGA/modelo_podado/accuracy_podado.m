modelo_podado_test
ytest = table2array(readtable('y_test.csv'));

contador = 0;
for i = 1:length(ytest)
    if (y_pred_podado(i) == ytest(i))
        contador = contador + 1;
    end
end

accuracy_modelo_podado = contador/length(ytest)