function T = TC_COND_CONV_UE_CR(TA, TInf, H, K, P, A, DX)
% Sintaxis
%   T = TC_UEGG_CR(TA, TB)
% Entrada
%  - TA, TB son las temperaturas en los extremos de la barra
%  - G es el termino de generacion
%  - K es el coeficiente de conductividad
%  - DX es el incremento de la longitud
% Salida
%  - T = [T1, T2, T3, T4, T5]' es un vector que retorna las temperaturas
%      interiores de la barra
C = (H * P) / (K * A) * DX ^ 2;
D(1) = - (3 + C)


for I = 2 : 4
 D(I) = - 2;
end
for I = 1 : 4
 D1(I) = 1;
end
A = diag(D1, -1) + diag(D, 0) + diag(D1, 1);
B(1) = -2 * TA -C;
B(5) = -2 * TB - C;
for I = 2 : 4
 B(I) = -C;
end
B = B';
T = inv(A) * B;

% T = TC_COND_CONV_UE_CR(100, 20, 20, 1, 1, 1, 0.2)
% T =
%    67.3513
%    39.9351
%    28.4670
%    23.7758
%    22.0958