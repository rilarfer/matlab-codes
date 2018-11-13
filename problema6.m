%% Problema 6
%  Ajuste un modelo exponencial a
%  x = 0.4 0.8 1.2 1.6 2 2.3
%  y = 800 975 1500 1950 2900 3600
close all; clear all; clc;
%%
% 
% * Primero linealizamos el modelo exponencial al utilizar la forma $\ln y = a_1 + a_2 x$.
x = [0 2 4 6 9 11 12 15 17 19]; %Datos
y = [5 6 7 6 9 8 7 10 12 12]; %Datos
z = log(y);
C = coefregresionlin(x,z);
fprintf('La ecuacion del modelo exponencial es: %f*exp(%f*x)',exp(C(1)),C(2));
%%
% 
% * Tambien podemos calcular la desviacion estandar de regresion y el
%  coeficiente de correlacion. (Aunque no lo piden)
n = length(x);
sr = sum((y-exp(C(1)+C(2)*x)).^2); % suma de cuadrados de residuos
st = sum((y-mean(y)).^2); % suma total de los cuadrados
sigma = sqrt(sr/(n-2))
r2 = (st-sr)/st
%%
% 
% * Ademas podemos graficar nuestro modelo
f = @(t) exp(C(1)+C(2)*t);
plot(x,y,'rx')
hold on
fplot(f,[min(x),max(x)])
hold off
title([num2str(exp(C(1))),'\cdot\ite^{',num2str(C(2)),'x}'])
legend('Datos','Curva de regresion');
xlabel('Eje X'); ylabel('Eje Y');