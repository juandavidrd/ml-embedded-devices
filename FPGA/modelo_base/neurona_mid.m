function [y] = neurona_mid(x, w, b)
    acum = 0;
    for i = 1:30
        acum = acum + x(i)*w(i);
    end
    acum = acum + b;
    if acum < 0
        y = 0;
    else
        y = acum;
    end
end