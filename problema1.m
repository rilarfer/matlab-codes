%% Problema 1
%  Utilice regresion por minimos cuadrados para ajustar una linea recta a
%  x 0 2 4 6 9 11 12 15 17 19
%  y 5 6 7 6 9 8 7 10 12 12
%  Ademaas de la pendiente y la interseccion, calcule el error estandar de
%  la estimacion y el coeficiente de correlacion. Despues repita el
%  problema, pero ahora efectue la regresion de x versus y, es decir,
%  intercambie las variables. Interprete sus resultados.
close all; clear all; clc;
%%
% 
% * Primero realizaremos los calculos de la regresion de y versus x.
x = [0 2 4 6 9 11 12 15 17 19];
y = [5 6 7 6 9 8 7 10 12 12];
C = coefregresionlin(x,y)
[sigma, r2] = desvregresionlin(x,y,C)
grafregresionlin(x,y,C)
%%
% 
% * Ahora realizaremos los calculos de la regresion de x versus y.
C = coefregresionlin(y,x)
[sigma, r2] = desvregresionlin(y,x,C)
Y = linspace(min(y),max(y),100);
X = C(1)+C(2)*Y;
plot(x,y,'rx',X,Y)
title([num2str(C(1)),'+(',num2str(C(2)),')*y'])
legend('Datos','Linea de regresion');
xlabel('Eje X'); ylabel('Eje Y');

%%
% 
%  Concluimos que los datos estudiados presentan una desviacion estandar de
%  regresion menor si los ajustamos y versus x.
% 