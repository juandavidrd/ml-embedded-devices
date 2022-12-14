xtest = table2array(readtable('x_test.csv'));

y_pred_base = zeros(length(xtest), 1);

for j = 1:length(xtest)
    y_pred_base(j) = modelo_base(xtest(j,:));
end