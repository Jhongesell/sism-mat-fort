program casedemo
  implicit none
  integer :: i
  integer, paremeter :: low=3, high=5

  ! This program does nothing useful

  do i = 1, 10 ! repeats loop with i=1,2,3,...10
     select case (i)
     case (high+1:) ! means>high
        print*,* i, " is greater than",high
     case (:low)
        print*,*, i, " is less or equal to",low
     case default
        print*,* i, " is nothing special"
     end select
  end do
end program casedemo
