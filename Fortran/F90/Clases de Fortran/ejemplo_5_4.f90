PROGRAM ejemplo_5_4
  !
  IMPLICIT NONE
  !
  REAL :: X_val = 0.0
  REAL :: X_app = 0.0, X_sum = 0.0
  INTEGER :: I_flag = 1, I_count = 0
  !
  ! APROXIMACIONES SUCESIVAS A SIN(X) = X - X**3/3! + X**5/5! - X**7/7! + ...
  WRITE(*,*) "INTRODUZCA EL VALOR DEL ÁNGULO X (RAD) :"
  READ (*,*) X_val
  !
  I_count = 1
  X_app = X_val
  X_sum = X_val
  !
  WRITE(*,*) '            ORDEN       APROX          SIN(X)        APPROX-SIN(X)'
  DO WHILE (I_flag == 1)
     WRITE(*,*) I_count, X_app, SIN(X_val), X_app - SIN(X_val)
     !
     X_sum = X_sum*(-1)*X_val*X_val/((I_count*2+1)*(I_count*2))
     X_app = X_app + X_sum
     !
     I_count = I_count + 1
     !
     WRITE(*,*) "STOP? (0 SI, 1 NO)"
     READ(*,*) I_flag
     IF (I_flag /= 1 .AND. I_flag /=0) I_flag = 1
  ENDDO
END PROGRAM ejemplo_5_4

