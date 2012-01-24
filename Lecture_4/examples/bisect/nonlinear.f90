program nonlinear

implicit none

  real(8) :: x   ! solution variable
  real(8) :: xl  ! lower bound
  real(8) :: xr  ! upper bound
  real(8) :: f   ! final residual
  real(8) :: tol ! tolerance

  ! function declaration
  external myfun

  ! ask user for guess
  print *,'Enter guess for solution of supplied function:'
  read *,x

  ! ask for bounds
  print *,'Enter lower and upper bound of search:'
  read *,xl,xr

  ! ask for tolerance
  print *,'Enter solution tolerance:'
  read *,tol

  ! solve by bisection
  call bisect(myfun,xl,xr,x,f,tol)

  ! print result
  print *,'Solution is:',x,' with final residual:',f

  ! terminate the program
  stop

end program nonlinear
