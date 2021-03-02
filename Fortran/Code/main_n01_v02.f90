PROGRAM ej_3_1
  !DEFINICIÓN DE VARIABLES
  IMPLICIT NONE
  REAL :: Fy = 25.0, k=8.5, p=0.017
  REAL :: B=0.90, L=0.10, uy=0
  REAL :: Total=0.0, Promedio=0.0
  INTEGER :: n=1, a=0
  !uy = Fy/k
  INTEGER, PARAMETER :: semana=7
  REAL , DIMENSION(1:semana) :: Horas_trab
  INTEGER :: dia

  PRINT *,' Introduzca las horas trabajadas'
  PRINT *,' por dia en una semana'
  DO dia=1,semana
     READ(*,*) Horas_trab(dia)
  ENDDO

  DO dia=1,semana
     Total = Total + Horas_trab(dia)
  ENDDO
  Promedio = Total/semana

  PRINT *,' Promedio de horas de trabajo semanales: '
  PRINT *, Promedio
END PROGRAM ej_3_1
