PROGRAM EJEMPLO_5_3
  !
  IMPLICIT NONE
  !
  REAL :: Pio2 = ASIN(1.0)
  REAL :: Angle1 = 0.0, Angle2 = 0.0
  INTEGER :: index
  !
  DO index = 0, 16, 2
     Angle1 = index*Pio2/4.0
     !
     WRITE(*,*)
     WRITE(*,*) 'Cos(',index/2,'Pi/4) = ', COS(Angle1),'; Cos(',index/2,'Pi/4) = ',COS(Angle2)
     WRITE(*,*) 'Sin(',index/2,'Pi/4) = ', SIN(Angle1),'; Sin(',index/2,'Pi/4) = ',SIN(Angle2)
     WRITE(*,*)
     !
     Angle2 = Angle2 + Pio2/2.0
     !
  ENDDO
END PROGRAM EJEMPLO_5_3
