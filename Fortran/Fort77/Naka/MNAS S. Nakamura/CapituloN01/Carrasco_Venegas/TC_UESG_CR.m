function T = TC_UESG_CR(TA, TB)
% Sintaxis
%  T=TC_UESG_CR(TA, TB)
% Entrada
% - TA, TB son las temperaturas en los extremos de la barra
% Salida
% - T = [T1, T2, T3, T4, T5]' es un vector que retorna las tempraturas
%   interiores de la barra
D(1) = -3;
D(5) = -3;
for I = 2 : 4
 D(I) = -2;
end
for I = 1 : 4
 D1(I)=1;
end
A = diag(D1, -1) + diag(D, 0) + diag(D1, 1);
B(1) = -2 * TA;
B(5) = -2 * TB;
B = B';
T = inv(A) * B;
%Para resolver ingresar lo siguiente:
% T = TC_UESG_CR(100, 500)