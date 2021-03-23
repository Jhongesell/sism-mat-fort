      PROGRAM MIPROGRAMA2
C-----CSL/F2-1.f INTERPOLACION DE LAGRANGE
      DIMENSION F(0:10),X(0:10)
C           N ES EL ORDEN DEL POLINOMIO DE INTERPOLACION
      DATA N /3/
      DATA (X(I),I=0,3) / 1., 2., 3., 4./
      DATA (F(I),I=0,3) / .671,.620,.567,.512 /
      PRINT *
      PRINT *,'CSL/F2-1    INTERPOLACION DE LAGRANGE'
      PRINT *
      PRINT *, 'TABLA DE VALORES UNITARIOS'
      PRINT *, '--------------------------'
      PRINT *, '     I    X(I)      F(I)'
        DO 37 I=0,N
          PRINT *, I,X(I),F(I)
 37     CONTINUE
      PRINT *, '----------------------'
 45   PRINT *, 'DAR X?'
      READ *, XA
      IF (XA.LT.X(O) . OR . XA.GT.X(N)) PRINT *,
     %  '     ADVERTENCIA: X ESTA EN EL RANGO DE EXTRAPOLACION'
      YRES=0
      DO I=0,N
        Z=1.0
        DO J=0,N
          IF (I.NE.J) Z=Z*(XA-X(J))/(X(I)-X(J))
        END DO
        YRES=WYRES+Z*F(I)
      END DO
      PRINT 200,XA,YRES
200   FORMAT('   RESULTADO DE LA INTERPOLACIÓN: G(',1PE12.5,')=',1PE12.5)
      PRINT *
      PRINT*,'OPRIMA 1 PARA CONTINUAR, O 0 PARA TERMINAR'
      READ *,K
      IF(K.EQ.1) GOTO 45
      PRINT*
      END