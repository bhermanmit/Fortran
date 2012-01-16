program pythag

implicit none

  real              :: hyp      ! the measure of the hyp.
  real              :: leg1     ! the measure of first leg
  real              :: leg2     ! the measure of second leg
  character(len=10) :: unitstr  ! the unit

  ! read in both legs from user
  print *, 'Enter both legs of right triangle::'
  read *, leg1, leg2

  ! have the user enter units
  print *, 'Enter units of legs'
  read *, unitstr

  ! perform pythagorean theorem
  hyp = sqrt(leg1**2 + leg2**2)

  ! print result
  print *,'The hypotenuse is:',hyp,' '//trim(unitstr)

end program pythag
