! ejemplo.f90
        program main
        implicit none
        character(len=*), parameter :: FILE_NAME = 'data01.txt'
        integer, parameter :: N = 20

        real, dimension(N) :: x, y
        integer :: i, fu

        x(1) = 0.0
        y(1) = 0.0

        do i = 2, N
               x(i) = 0.1 * i
               y(i) = SIN(x(i))
        end do

        open (newunit=fu, action='write', file=FILE_NAME, status='replace')

        do i = 1, N
               write (fu, *) x(i), y(i)
        end do
        close (fu)

        call execute_command_line('gnuplot -p plot.plt')
        end program main
      
