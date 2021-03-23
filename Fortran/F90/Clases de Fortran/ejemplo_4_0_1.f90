PROGRAM test01
  !IMPLICIT NONE
  REAL, DIMENSION(1:4,1:2) :: A = &
       RESHAPE( (/1.1, 2., 3., 4., 1., 2., 3., 4./), (/4, 2 /) )
  PRINT *,A
END PROGRAM test01
