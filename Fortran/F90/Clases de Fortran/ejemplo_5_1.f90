PROGRAM EJEMPLO_5_1
  IMPLICIT NONE
  !
  REAL :: NOTA
  CHARACTER (3), DIMENSION(1:5) :: NT, LISTNT=(/'A1','A2','A3','A4','A5'/)
  INTEGER :: IN
  ! READ NOTE
  PRINT *,"Notal del estudiante?"
  READ  50, NOTA
50 FORMAT(F4.1)
  IF (Nota>0.0.AND.Nota<5.0) THEN
     IN=1
  ELSE IF (NOTA>=5.0.AND.NOTA<7.0) THEN
     IN=2
  ELSE IF (NOTA>=7.0.AND.NOTA<9.0) THEN
     IN=3
  ELSE IF (NOTA>=9.0.AND.NOTA<10.0) THEN
     IN=4
  ELSE IF (NOTA==10.0) THEN
     IN=5
  ELSE
     IN=0
  ENDIF

  IF (IN==0) THEN
     PRINT *,"LA NOTA : ", NOTA, " NO ES UNA NOTA ACEPTABLE."
  ELSE
     PRINT 100, Nota, LISTNT(IN)
  ENDIF
  ! la declaracion de la variable LISTNT
100 FORMAT(1X,'LA NOTA DEL ALUMNO ES ',F4.1,' (',A3,')')
END PROGRAM EJEMPLO_5_1








