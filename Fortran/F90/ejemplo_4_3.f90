PROGRAM ej_4_3
  !
  ! DEFINICIÓN DE VARIABLES
  IMPLICIT NONE
  REAL, DIMENSION(1:5) :: VA = (/1.2,2.3,3.4,4.5,5.6/), PMAT
  INTEGER I
  INTEGER, DIMENSION(1:5) :: VB = (/(2*I, I=1, 5)/)
  REAL :: PE
  REAL, DIMENSION(1:5, 1:5) :: MC
  REAL, DIMENSION(25) :: VC = &
       (/ 0.0,0.0,0.0,0.0,1.0,0.5,2.0,3.2,0.0,0.0, &
       0.0, 0.0,0.0,0.0,11.0,0.5,2.3,3.2,0.0,0.0, &
       1.0,3.0,2.0,-2.0,-0.6 /)
  ! Producto escalar VA.VB
  PE = DOT_PRODUCT(VA,VB)
  !
  ! Producto de matrices VAxMC
  ! Haciendo RESHAPE de VC hacemos que sea una matriz 5x5
  MC = RESHAPE(VC, (/5, 5/))
  PMAT = MATMUL(VA,MC)
  !
  PRINT *, 'PRODUCTO VAxMC = ', PMAT(1:5)
  !
END PROGRAM ej_4_3
  
