c-----CSL/F2-2.FOR TABLA DE DIFERENCIAS HACIA ADELANTE CON PUNTOS
c     DE LA MALLA ESPACIADOS UNIFORMEMENTE
      DIMENSION F(0:10, 0:10), X(0:10)
 15   PRINT *
 20   PRINT *, 'CSL/F2-2 TABLA DE DIFERENCIAS HACIA ADELANTE (FORTRAN)'
      PRINT *, '------------------------------------------------------'
      PRINT *, '         DIFERENCIAS DE ORDEN N'
      PRINT *, ' ----------------------------------------------------'
c     ! NI es el orden máximo; NI + 1 es el número de datos
      DATA NI/6/
      DATA (X(I), I=0,6) /1,3,5,7,9,11,13 /
      DATA (F(I,0), I=0,6) /1., 0.5, 0.3333333, 0.25, 0.2, 0.1666666,
     %0.14285714/
      DO K=1, NI
         J=NI-K
         DO I = 0,J
            F(I,K)=F(I+1,K-1) - F(I,K-1)
         END DO
      END DO
      PRINT *
      PRINT *,'I      X(I)     F(I)   N=1    2      3      4      5
     %       6'
      DO I=0, NI
         J=NI-I
         PRINT 440, I, X(I), (F(I,K),K=0,J)
         PRINT *
      END DO
 400  PRINT *
 440  FORMAT (1X, I2, 8F9.5)
      END
