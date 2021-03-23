PROGRAM ej_1_2
  ! Este programa lee t res números y calcula su suma y su media
  IMPLICIT NONE
  REAL :: N1, N2, N3, Average = 0.0, Total = 0.0
  INTEGER :: N = 3
  PRINT *,' Introduce tres numeros (separados por espacio o coma)'
  PRINT *,' '
  READ (*,*) N1, N2, N3
  Total = N1 + N2 + N3
  Average = Total/N
  PRINT *,'La suma de los tres numeros es ', Total
  PRINT *,'El promedio es ', Average
END PROGRAM  ej_1_2
