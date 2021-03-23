      program CalcularArea
      implicit none
      real pi, radio, area
      parameter (pi = 3.141593)
      write *, ’Ingrese radio del círculo’
      read*, radio
      area = pi*radio**2
      print 'Area = ’, area
      stop
      end