PROGRAM mi_programa
  IMPLICIT NONE
  REAL :: Fy = 25.0, k=8.5, p = 0.017
  REAL :: B=0.90, L=0.10
  INTEGER :: n = 1, a=0
  REAL :: uy
  uy=Fy/k
  
  INTEGER, PARAMETER :: long_vec=10 ! Longitud del vector
  !REAL , DIMENSION (1:log_vec) :: NC
  REAL , DIMENSION (1:4) :: NC
  !uy=Fy/k
  !REAL, DIMENSION(1:long_vec) :: NC ! V
  
  !DATOS DE INGRESO
  !===============
  PRINT *,'-------DATOS PARA EL ANALISIS----------'
  PRINT *,'Vector desplazamiento ='
  !READ (*,*) NC
  PRINT *,'---------------------------------------'
  !PRINT *,'uy = ',uy
END PROGRAM mi_programa
