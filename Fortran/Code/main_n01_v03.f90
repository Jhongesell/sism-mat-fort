PROGRAM ej_3_2
  IMPLICIT NONE
  !Sismología
  REAL :: Fy = 25.0, k=8.5, p=0.017
  REAL :: B=0.90, L=0.10, uy=0
  INTEGER:: a=0, tamano
  REAL, DIMENSION(:), ALLOCATABLE :: vector
  INTEGER:: elemento, cant_element

  PRINT *,' Introduzca el tamaño de vector'
  READ (*,*) cant_element

  ALLOCATE(vector(1:cant_element))

  PRINT *,'Introduzca los elementos del vector'
  PRINT *,'para ',cant_element,' elementos.'
  DO elemento=1, cant_element
     READ (*,*) vector(elemento)
  ENDDO
  tamano = SIZE(vector)
  PRINT *,'El tamaño de vector es = ',tamano
  
END PROGRAM ej_3_2

  
