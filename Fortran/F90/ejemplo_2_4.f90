PROGRAM ej_2_4
  ! Programa para calcular el tiempo que tarda la luz en
  ! recorrer una distancia dada en unidades astonómicas.
  ! 1 UA = 1,50E11 m
  !
  ! Definición de variables
  IMPLICIT NONE
  ! u_a : unidades astronómicas en km
  REAL, PARAMETER :: u_a = 1.50*10.0**8
  ! a_luz : año luz --> distancia en km recorrida por la luz en un año.
  REAL , PARAMETER :: a_luz=9.46*10.0**12
  ! m_luz : minuto luz --> distancia en km recorrida por la luz en un minuto.
  REAL :: m_luz
  ! dist : distancia recorrida en UAs (INPUT)
  REAL :: dist
  ! t_min : tiempo en minutos necesario para recorrer la distancia Distance
  REAL :: t_min
  !
  ! min : parte entera de t_min
  ! seg : número de segundos (parte decimal de t_min)
  INTEGER :: min , seg
  !
  m_luz = a_luz/(365.25 * 24.0 * 60.0) ! Calculo del minuto-luz
  !
  PRINT *
  PRINT *,'Distancia en UAs'
  READ (*,*) dist
  PRINT *
  !
  t_min = (dist*u_a)/m_luz
  min = t_min; seg = (t_min - min) * 60
  !
  PRINT *,' La luz tarda ', min, '  minutos y ', seg, ' segundos'
  PRINT *,' en recorrer una distancia de ', dist, 'UA.'
END PROGRAM ej_2_4
