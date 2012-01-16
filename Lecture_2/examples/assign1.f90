program assign1

implicit none

  integer :: n ! integer to read in
  integer :: i ! the output variable

  ! ask user for whole number 1-9
  print *,'Enter number 1-9::'
  read *,n

  ! multiply by 9
  i = 9*n

  ! add digits together
  i = i/10 + mod(i,10)

  ! subtract by 5 
  i = i - 5

  ! print out result
  print *,'The result is:',i

  ! terminate the program
  stop

end program assign1
