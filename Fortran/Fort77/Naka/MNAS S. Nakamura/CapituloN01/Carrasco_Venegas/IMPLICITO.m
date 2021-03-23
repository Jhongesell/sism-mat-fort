function [TMALLA] = IMPLICITO (CI, CF1, CF2, NX, Nt, XF, tF, ALFA)
% Sintaxis
%  [TMALLA] = IMPLICITO(CI, CF1, CF2, NX, Nt, XF, tF, ALFA)
% Entrada
%  - CI es la condicion inicial, almacenada como un archivo CI.m
%  - CF1 y CF2 son las condiciones de frontera, almacenadas como archivos.
%  CF1.m y CF2.m, respectivamente
%  - NX es el numero de puntos de la malla en el eje X
%  - Nt es el numero de puntos de la malla en el eje t
%  - XF es la longitud total del eje X
%  - tF es la longitud total del eje t
%  - ALFA es el coeficiente de la derivada de segundo orden
%  Salida
%  - TMALLA es una matriz que contiene la tabla (malla) con los valores de
%    la variable dependiente T a lo largo del eje X a distintos tiempos t
DX = XF / (NX - 1);
Dt = tF / (Nt - 1);
LAMBDA = ALFA * Dt / DX^2;
for I = 2 : (NX - 1)
 T(I) = CI(DX * (I - 1));
 end
 T(1) = (CI(DX)+CF1(Dt)) / 2 ;
 T(NX) = (CI(XF - DX) + CF2(Dt)) / 2 ;
 TMALLA(1, :) = T;
 for I = 1: (NX - 3)
  A(I) = - LAMBDA;
  C(I) = - LAMBDA;
 end
 for I = 1 : (NX - 2)
  B(I) = 1 + 2 * LAMBDA;
 end
 for J = 1 : (Nt - 1)
  T(1) = CF1(Dt * J);
  T(NX) = CF2(Dt * J);
  for I = 1 : (NX - 2)
    D(I) = T(I+1);
  end
  D(1) = D(1) + LAMBDA * T(1);
  D(NX - 2) = D(NX - 2) + LAMBDA * T(NX);
  AA = diag(A, -1) + diag(B,0) + diag(C,1);
  X = inv(AA) * D';
  for I = 1 : (NX - 2)
    T(I + 1) = X(1);
  end
  TMALLA(J + 1, :) = T;
end 