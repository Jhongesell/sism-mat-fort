PROGRAM ejemplo_6_2
  !
  IMPLICIT NONE
  !
  INTEGER, PARAMETER :: Long=SELECTED_INT_KIND(16) !Tipo de enetero de 64 bits
  INTEGER :: i
  INTEGER (KIND = Long) :: big=10
  !
  DO i=1,18
     PRINT 100, i, big
100  FORMAT(1X, '10 elevado a ',I3,2X,'=',2X,I16)
     big=big*10
  END DO
END PROGRAM ejemplo_6_2
