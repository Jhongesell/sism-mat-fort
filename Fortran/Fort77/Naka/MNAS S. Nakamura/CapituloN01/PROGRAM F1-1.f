      PROGRAM F1-1
C-----CSL/F1-1.f     CONVERSION DE DECIMAL A BINARIO (FORTRAN)
      INTEGER A(255)
      PRINT *
      PRINT *, 'CSL/F1-1   CONVERSION DE DECIMAL A BINARIO (FORTRAN)'
      PRINT *
 10   PRINT *, 'INTRODUZCA EL VALOR DECIMA ?'
      READ *, X
      L=0
      K=1
      I=LOG(X)/LOG(2.0) + 2
 70   I=I-1
      IF (I.LT.-200) STOP
      B=2.0**FLOAT(I-1)
      IF (X.GE.B) THEN
        A(K)=1
        X=X-B
        IF (L.EQ.0) M=I
        IF (L.EQ.0) L=1
      ELSE
        IF (K.GT.1) A(K)=0
      END IF
      IF (L.GT.0) K=K+1
      IF (K.LT.25) GOTO 70
      PRINT *
      PRINT *, '---------------------------------------------------'
      PRINT *, 'BINARIO'
      PRINT 30, (A(K), K=1, 24)
 30   FORMAT( 1X, '  MANTISA=   ' , 10(4I1,1X))
      PRINT 40,M
 40   FORMAT('  EXPONENTE=',I3)
      PRINT *, '---------------------------------------------------'
      PRINT *
      PRINT *
      PRINT *,' OPRIMA 1 PARA CONTINUAR, O 0 PARA TERMINAR'
      READ *,K
      IF(K.EQ.1) GOTO 10
      PRINT *
      END