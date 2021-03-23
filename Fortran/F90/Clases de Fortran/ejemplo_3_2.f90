PROGRAM ej_3_2
  !
  ! Definición de variables
  implicit none
  real :: Total=0.0, Promedio=0.0
  REAL, DIMENSION(:), ALLOCATABLE :: Horas_trab
  INTEGER :: dia, num_dias
  !
  PRINT *,' Introduzca el número de días para los que '
  PRINT *,'se va a calcular el promedio de horas trabajadas'
  READ(*,*) num_dias
  !
  ALLOCATE(Horas_trab(1:num_dias))
  !
  PRINT *,' Introduzca las horas trabajadas'
  PRINT *,' por dia en ', num_dias, 'dias.'
  DO dia=1, num_dias
     READ (*,*) Horas_trab(dia)
  ENDDO
  DO dia=1,num_dias
     Total = Total + Horas_trab(dia)
  ENDDO
  Promedio = Total / num_dias
  !
  PRINT *,' Promedio de horas de trabajo en ',num_dias, ' dias : '
  PRINT *, Promedio
  !
END PROGRAM ej_3_2
