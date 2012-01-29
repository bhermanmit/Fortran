program circle_test

  use class_Circle, only: Circle,circle_print

  implicit none

  type(Circle) :: acircle  ! a circle instance

  ! ask user for radius
  write(*,*) 'Enter circle radius:'
  read(*,*) acircle%radius

  ! print out results
  call circle_print(acircle)

  ! terminate the program
  stop

end program circle_test
