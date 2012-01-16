program zeta

  implicit none

  real :: zeta_fun  ! zeta function
  real :: zeta_val  ! zeta variable
  real :: val=2.0   ! random value

  ! call zeta subroutine
  call zeta_sub(val,zeta_val)

  ! print results
  print *,'From subroutine:',zeta_val
  print *,'From function:',zeta_fun(val)

end program zeta

subroutine zeta_sub(x,zeta)

  real, intent(in)  :: x    ! an input  value
  real, intent(out) :: zeta ! the answer

  zeta = 3.14159/x

end subroutine zeta_sub

function zeta_fun(x)

  real, intent(in) :: x        ! an input value
  real             :: zeta_fun ! the answer

  zeta_fun = 3.14159/x

end function zeta_fun
