PROGRAM ej_6_3
  ! Programa que hace patente problemas de desbordamiento
  ! aritmetico por exceso y por defecto.
  IMPLICIT NONE
  INTEGER :: I
  REAL :: peq = 1.0
  REAL :: gran = 1.0
  !
  DO i=1,20
     PRINT 100, I, peq, gran
100  FORMAT(' ', I3,' ',F9.2,' ',F9.2)
     peq=peq/10.0
     gran=gran*10.0
  END DO
END PROGRAM ej_6_3
