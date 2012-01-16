program squareroot

  implicit none

  real :: valin  ! the val to be square rooted
  real :: valout ! the output value

  ! read in val from user
  print *, 'Enter a real number:'
  read *, valin

  ! determine if the square root is real or complex
  if (valin > 0.0) then

    ! take the sqrt
    valout = sqrt(valin)

    ! print the result
    print *,'The square root is also real:',valout

  else if (valin < 0.0) then

    ! make the valin positive and take sqrt
    valout = sqrt(-1.0*valin)

    ! print the result
    print *,'The square root is complex: +/-',valout,'i'

  else

    print *, 'The square root is obviously 0.0!'

  end if

end program squareroot
