%Graficar
%X(t)=sin(t); Y(t)=cos(t); Z(t)=t
t=[0 : pi/50 : 10*pi];
X= sin(t); Y=cos(t); Z=t
plot3(X,Y,Z);
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Helice parametrica')