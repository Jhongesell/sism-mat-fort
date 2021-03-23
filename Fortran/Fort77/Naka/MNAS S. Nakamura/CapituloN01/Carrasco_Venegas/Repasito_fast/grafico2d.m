X=[0: 0.5 : 10];
Y=sin(X) .* exp(-0.4*X);
plot(X,Y, 'k');
xlabel('X');
ylabel('Y');
title('Graficando en 2D')