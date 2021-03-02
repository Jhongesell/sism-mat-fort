PROGRAM ej_3_1
  !DEFINICIÓN DE VARIABLES
  IMPLICIT NONE
  REAL :: Fy = 25.0, k=8.5, p=0.017
  REAL :: B=0.90, L=0.10, uy=0
  REAL :: Total=0.0, Promedio=0.0
  INTEGER :: n=1, a=0
  !uy = Fy/k
  
  INTEGER, PARAMETER :: semana=4
  REAL , DIMENSION(1:semana) :: Horas_trab
  INTEGER :: dia

  INTEGER, PARAMETER :: longvec=4
  REAL , DIMENSION(1:longvec) :: vector
  INTEGER :: elemento

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
  PRINT *,'======================'
  PRINT *,'PROGRAMA DE SISMOLOGÍA'
  PRINT *,'======================'
  PRINT *,' ----- DATOS PARA EL ANALISIS ----- '
  PRINT *,'Introduzca vector de desplazamientos'
  PRINT *,' ---------------------------------- '
  DO elemento=1,longvec
     READ(*,*) vector(elemento)
  ENDDO
  N = SIZE(vector)/2
  PRINT *,"La mitad de la longitud del vector es-->", N
  !PRINT *,N
  
  
END PROGRAM ej_3_1
