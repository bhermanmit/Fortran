program squareroot

implicit none

  real :: x ! input

  ! ask for x
  print *,'Enter x:'
  read *,x

  !check to see if x is negative
  if (x < 0.0) then

    ! negate x
    x = -1.0*x

    ! take the sqrt
    x = sqrt(x)

    ! print result to user
    print *,'The squareroot is: +/-',x,'i'

  else

    ! x is pos, take sqrt
    x = sqrt(x)

    ! print result to user
    print *,'The squareroot is: +/-',x

  end if

  ! terminate code
  stop

end program squareroot
