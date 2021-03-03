PROGRAM asistencia
  IMPLICIT NONE
  INTEGER, PARAMETER :: N_alum=2
  INTEGER, PARAMETER :: N_asig=1
  INTEGER, PARAMETER :: N_prac=3
  INTEGER :: alumno, asignatura, pract
  CHARACTER(LEN = 2), DIMENSION(1:N_prac,1:N_asig,1:N_alum) :: asiste='NO'
  DO alumno = 1,N_alum
     DO asignatura = 1,N_asig
        PRINT *,'Ingrese nota de practicas: '
        READ(*,*) (asiste(pract,asignatura,alumno),pract = 1, N_prac)
     ENDDO
  ENDDO
  PRINT *,' Asistencia a practicas : '
  DO alumno=1, N_alum
     PRINT *,' Alumno = ', alumno
     DO asignatura = 1, N_asig
        PRINT *,'  Asignatura = ', asignatura, ' : ', (asiste(pract,asignatura,alumno),pract=1,N_prac)
     ENDDO
  ENDDO
  PRINT *,'Variable asiste:'
  PRINT *,asiste
END PROGRAM asistencia
