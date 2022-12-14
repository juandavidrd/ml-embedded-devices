xtest = table2array(readtable('x_test.csv'));

y_pred_podado = zeros(length(xtest), 1);

for j = 1:length(xtest)
    y_pred_podado(j) = modelo_podado(xtest(j,:));
end