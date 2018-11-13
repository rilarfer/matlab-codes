function [sigma, r2] = desvregresionlin(x,y,C)
%  Esta funcion calcula la desviacion estandar de la regresion y el
%  coeficiente de determinacion de una regresion lineal.
%  USAGE: [sigma, r2] = desvregresionlin(x,y,C)
%  x es un vector de las x-coordenadas.
%  y es un vector de las y-coordenadas.
%  C es un vector obtenido de la funcion coefregresionlin.
n = length(x);
sr = sum((y-C(1)-C(2)*x).^2); % suma de cuadrados de residuos
st = sum((y-mean(y)).^2); % suma total de los cuadrados
sigma = sqrt(sr/(n-2));
r2 = (st-sr)/st;