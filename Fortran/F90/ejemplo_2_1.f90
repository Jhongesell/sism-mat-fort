PROGRAM ej_2_1
  IMPLICIT NONE
  ! Ejemplo de programa que permite calcular la energía
  ! de un nodo normal dados el número de cuantos (v), la
  ! frecuencia (w) y la anarmonicidad (wx) como
  !
  ! Ge(v) = we (v+1/2) - wexe (v+1/2)**2
  !
  ! Definición de variables
  REAL :: energ_0, energ, delta_e ! deltae = energ-energ0
  REAL :: we = 250.0, wexe = 0.25 ! Unidades: cm-1
  INTEGER :: v = 0
  CHARACTER(LEN=60) :: for_mol
  ! Operaciones I/O
  PRINT *,'Formula de la molecula: '
  READ(*,*) for_mol
  PRINT *,'Num. de quanta de exitación: '
  READ(*,*) v
  ! Calculos
  energ = we*(v+0.5) - wexe*(v+0.5)**2
  energ_0 = we*(0.5) - wexe*(0.5)**2
  delta_e = energ - energ_0
  ! Operaciones I/O
  PRINT *
  PRINT *,'Especie molecular: ', for_mol
  PRINT *,'num. de quanta: ', v
  PRINT *,'energ = ', energ, 'cm-1'
  PRINT *,'energ_0 = ', energ_0, ' cm-1'
  PRINT *,'energia_0 = ', delta_e, 'cm-1'
  END PROGRAM
