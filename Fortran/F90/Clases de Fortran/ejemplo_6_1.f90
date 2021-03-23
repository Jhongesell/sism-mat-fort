PROGRAM ej_6_1
  !
  IMPLICIT NONE
  INTEGER :: i, big=10
  !
  DO i=1,18
     PRINT 100, i, big
100  FORMAT(1X, '10 elevado a', I3,2X,'=',2X,I12)
     big=big*10
  END DO
END PROGRAM ej_6_1
