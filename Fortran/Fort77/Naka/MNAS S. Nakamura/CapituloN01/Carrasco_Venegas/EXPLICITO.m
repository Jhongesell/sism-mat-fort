function [TMALLA] = EXPLICITO(CI, CF1, CF2, NX, Nt, XF, tF, ALFA)
% Sintaxis
%   [TMALLA]= EXPLICITO(CI, CF1, CF2, NX, Nt, XF, tF, ALFA)
% Entrada
% - CI es la condicion inicial, almacenada como un archivo CI.m
% - CF1 y CF2 son las condiciones de frontera, almacenadas como archivos
% CF1.m y CF2.m, respectivamente
% - NX es el numero de puntos de la malla en el eje X
% - Nt es el numero de puntos de malla en el eje t
% - XF es la longitud total del eje X
% - tF es la longitud total del eje t
% - ALFA es el coeficiente de la derivada de segundo orden
% Salida
% - TMALLA es una matriz que contiene la tabla (malla) con los valores de
% la variable dependiente T a lo largo del eje X a distintos tiempos
DX = XF / (NX - 1);
Dt = tF / (Nt - 1);
LAMBDA = ALFA * Dt / DX^2;
for I = 2 : (NX - 1)
  T(I) = CI(DX * (I-1));
end
T(1) = (CI(DX) + CF1(Dt)) / 2;
T(NX) = (CI(XF - DX) + CF2(Dt)) / 2;
TMALLA(1, :) = T;
for J = 1 : (Nt - 1)
  for I = 2 : (NX - 1)
    T1(I) = LAMBDA * T(I - 1) + (1 - 2 * LAMBDA) * T(I) + LAMBDA * T(I + 1);
  end
  for I = 2 : (NX-1)
    T(I) = T1(I);
  end
  T(1) = CF1(Dt * J);
  T(NX) = CF2(Dt * J);
  TMALLA(J + 1, :) = T;
  end
 %plot(X, TMALLA(1, :), X, TMALLA(2, :), X, TMALLA(X),X,TMALLA(4, :))
 %xlabel('X');
 %ylabel('T');
 %surf(X, t, TMALLA)
 %xlabel('X'); ylabel('t'); zlabel('T');