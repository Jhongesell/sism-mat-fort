PROGRAM EJEMPLO_5_2
  IMPLICIT NONE
  REAL :: Nota
  INTEGER :: IN, Inota
  CHARACTER (4), DIMENSION(1:5) :: LISTNT=(/'A1','A2','A3','A4','A5'/)
  ! READ NOTE
  PRINT *, "Nota del estudiante"
  READ (*,*) Nota
  Inota = NINT(Nota)
  SELECT CASE (Inota)
  CASE (0:10)
     IN = 1
  CASE (11,12)
     IN = 2
  CASE (13,14)
     IN = 3
  CASE (15)
     IN = 4
  CASE (16:21)
     IN = 5
  CASE DEFAULT
     IN = 0
  END SELECT
  !
  IF (IN==0) THEN
     PRINT *,"LA NOTA : ", Nota, " NO ES UNA NOTA ACEPTABLE."
  ELSE
     PRINT 100, Nota, LISTNT(IN)
  ENDIF
  !
100 FORMAT(1X,'LA NOTA DEL ALUMNO ES ',F4.1' (',A3,')')
  !
  END PROGRAM EJEMPLO_5_2
     
