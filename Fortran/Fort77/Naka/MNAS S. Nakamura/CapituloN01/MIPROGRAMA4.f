      PROGRAM MIPROGRAMA4
C-----CSL/F2-3.f    TABLA DE DIFERENCIAS DIVIDIDAS CON
C                   PUNTOS DE LA MALLA SEPARADOS DE MANERA NO UNIFORME
      DIMENSION F(0:10,0:10), x(0:10)
      PRINT *
      PRINT *, 'CSL/F2-3      TABLA DE DIFERENCIAS DIVIDIDAS'
      DATA NI/6/
      DATA (X(I,0),I=0,6)/0.1, 0.2, 0.4, 0.7, 1.0, 1.2, 1.3/
      DATA (F(I,0),I=0,6)/.99750, .99002, .96040, .88120, .76520
     1    ,.67113, .62009/
      DO K=1,NI
      J=NI-K
        F(I,J)=(F(I+1,K-1)-F(I,K-1))/(X(I+K)-X(I))
      END