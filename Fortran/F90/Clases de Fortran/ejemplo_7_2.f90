PROGRAM EJEMPLO_7_2
  ! PROGRAMA QUE CALCULA LAS SOLCUIONES DE UNA EC DE SEGUNDO GRADO
  ! y = A*x**2 + B*x + C
  IMPLICIT NONE
  ! Definición de variables
  REAL :: A = 0.0
  REAL :: B = 0.0
  REAL :: C = 0.0
  REAL, DIMENSION(2) :: SOL
  REAL :: TEMP
  INTEGER :: I
  !
  ! Lectura de coeficientes
  READ*, A
  READ*, B
  READ*, C
  ! print*, a,b,c
  !
  ! CALCULOS
  TEMP = SQRT(B*B-4.0*A*C)
  !
  SOL(1) = (-B+TEMP)/(2.0*A)
  SOL(2) = (-B-TEMP)/(2.0*A)
  !
  !
  ! IMPRESIONES DE LAS SOLUCIONES
  DO I=1, 2
     PRINT 200, I, SOL(I)
200  FORMAT(1X,'SOLUCION',I2,' = ',F18.6)
  END DO
  !
END PROGRAM EJEMPLO_7_2
