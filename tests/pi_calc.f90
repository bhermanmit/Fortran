program pi_calc

  implicit none

  integer :: i       ! loop counter
  integer :: n_darts ! number of darts
  integer :: n_hits  ! number of darts that hit board
  integer :: L       ! size of board
  real(8) :: rx      ! random x loc
  real(8) :: ry      ! random y loc
  real(8) :: area    ! area of 1/4 circle
  real(8) :: pi      ! pi


  ! ask user for number of darts
  write(*,*)'How many darts?'
  read(*,*) n_darts

  ! set board size
  L = 5

  ! seed random number generator
  rx = rand(5)

  ! initilize hit counter
  n_hits = 0

  ! begin loop around throwing darts
  do i = 1,n_darts

     ! sample x location 
     rx = rand(0)*L
     ry = rand(0)*L

     ! check if dart hit and tally
     if (sqrt(rx**2 + ry**2) <= L) n_hits = n_hits + 1

  end do
     
  ! compute area of 1/4 circle
  area = dble(n_hits)/dble(n_darts)*(L**2)

  ! solve for pi
  pi = 4.0_8*area/L**2

  ! print results
  write(*,*) 'Pi is calculated to be:',pi

  ! terminate the program
  stop

end program pi_calc
