PROGRAM ej_2_2
  IMPLICIT NONE
  REAL :: A,B,C
  INTEGER ::I
  A = 1.5
  B = 2.0
  C = A / B
  I = A / B
  PRINT *
  PRINT *,'Caso (1), variable real'
  PRINT *,A,'/',B,' = ',C
  PRINT *,'Caso (2), variable entera'
  PRINT *,A,'/',B,' = ',I
  END PROGRAM ej_2_2
