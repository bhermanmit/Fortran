program zeta

implicit none

  real :: x        ! input variable
  real :: zeta_var ! result
  real :: zeta_fun ! zeta function

  ! ask user for input
  print *,'Enter x:'
  read *,x

  ! call subroutine to get zeta
  call zeta_sub(x,zeta_var)

  ! print result
  print *,'Sub::For x=',x,', zeta is:',zeta_var
  print *,'Fun::For x=',x,', zeta is:',zeta_fun(x)

  ! terminate program
  stop

end program zeta

subroutine zeta_sub(x,zeta_var)

implicit none

  ! formal variables
  real, intent(in)  :: x        ! input variable
  real, intent(out) :: zeta_var ! result

  ! local variables
  real,parameter :: pi=3.1415926  ! the constant pi

  ! compute zeta
  zeta_var = pi/x

end subroutine zeta_sub

function zeta_fun(x)

implicit none

  ! function name
  real :: zeta_fun

  ! formal variables
  real :: x        ! input variable

  ! local variables
  real,parameter :: pi=3.1415926  ! the constant pi

  ! compute
  zeta_fun = pi/x

end function zeta_fun 
