PROGRAM ej_4_6
  !
  ! DEFINICION DE VARIABLES
  IMPLICIT NONE
  INTEGER, DIMENSION(1:3, 1:3) :: A = RESHAPE( (/1,2,3,4,5,6,7,8,9 /), (/ 3,3 /))
  !
  !
  !     1 4 7
  ! A = 2 5 8
  !     3 6 9
  !
  PRINT*, "Elemento de la matriz",A(2,3)
  PRINT*, "Submatriz caso 1", A(1:2,2:3)
  PRINT*, "Submatriz caso 2", A(::2,::2)
  PRINT*, "Columna de la matriz", A(:,3)
  PRINT*, "Fila de la matriz", A(2,:)
  PRINT*, "Matriz completa", A
  PRINT*, "Matriz transpuesta", TRANSPOSE(A)
END PROGRAM ej_4_6
