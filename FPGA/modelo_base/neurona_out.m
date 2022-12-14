function [y] = neurona_out(x, w, b)
    acum = 0;
    for i = 1:16
        acum = acum + x(i)*w(i);
    end
    acum = acum + b;

    y = 0.5*acum/(1+abs(acum))+0.5;
%     y = sigmoide(acum);
    % y = 0.4*tanh(acum) + 0.5;
end