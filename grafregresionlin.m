function grafregresionlin(x,y,C)
%  Esta funcion graficara un modelo de regresion lineal resuelto mediante
%  la funcion coefregresionlin. Ademas se mostraran los puntos datos.
%  USAGE: grafregresionlin(x,y,C)
%  x es un vector de las x-coordenadas.
%  y es un vector de las y-coordenadas.
%  C es un vector obtenido de la funcion coefregresionlin.

f = @(t) C(1)+C(2)*t; % funcion manejable
xmin = min(x); xmax = max(x);
plot(x,y,'rx'); hold on;
fplot(f,[xmin,xmax]); hold off;
title([num2str(C(1)),'+(',num2str(C(2)),')*x'])
legend('Datos','Linea de regresion');
xlabel('Eje X'); ylabel('Eje Y');