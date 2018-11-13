function C = coefregresionlin(x,y)
%  Esta funcion retorna los coeficientes
%  de regresion del modelo $y=c_1+c_2*x$
%  USAGE  C = coefregresionlin(x,y)
%  x es un vector de las x-coordenadas.
%  y es un vector de las y-coordenadas.
%  Construccion de Ecuaciones Normales
if length(x)~=length(y)
    error('La cantidad de elementos de x e y no coincide.');
end
n = length(x); sumx = sum(x); sumx2 = sum(x.^2);
sumy = sum(y); sumxy = sum(x.*y);
A = [n sumx; sumx sumx2];
B = [sumy sumxy]';
%  Coeficientes de la Regresion Lineal
C = A\B;
end