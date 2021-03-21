PROGRAM ej_6_5
  ! Programa que calcula el IMC o indice de Quetelet.
  ! Se hace según la expresión matemática:
  ! IMC=(peso (kg))/(talla**2 (m**2))
  IMPLICIT NONE
  CHARACTER (LEN=25) :: NOMBRE
  INTEGER :: hcm = 0, peso = 0 ! altura en cm y peso en kg
  REAL :: talla = 0.0 ! altura en metros
  REAL :: IMC ! Indice de masa corporal

  PRINT*, 'Introduzca su nombre de pila: '; READ*, NOMBRE
  PRINT*, 'Introduzca su peso en kilogramos: '; READ*, peso
  PRINT*, 'Introduzca su altura en centimetros: '; READ*, hcm
  talla=hcm/100.0
  IMC=peso/(talla**2)
  PRINT 100, NOMBRE, IMC, IMC
100 FORMAT(1X,'El IMC de ',A,' es ',F10.4,' o ',E10.4)
END PROGRAM ej_6_5
