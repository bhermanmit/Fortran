program matmultiply

implicit none

  integer :: n  ! # of rows in first matrix
  integer :: m  ! # of cols in first matrix
  integer :: p  ! # of rows in second matrix
  integer :: q  ! # of cols in second matrix
  integer :: i  ! iteration counter
  integer :: j  ! iteration counter
  real,allocatable :: A(:,:) ! first matrix
  real,allocatable :: B(:,:) ! second matrix
  real,allocatable :: C(:,:) ! result matrix

  ! ask user to enter dimensions of first matrix
  print *,'Enter # of row then columns of first matrix:'
  read *,n,m

  ! allocate first matrix
  allocate(A(n,m))

  ! read in first matrix
  print *,'Enter first matrix (column-major):'
  read *, A

  ! ask user to enter dimensions of first matrix
  print *,'Enter # of row then columns of first matrix:'
  read *,p,q

  ! allocate second matrix
  allocate(B(p,q))

  ! read in first matrix
  print *,'Enter first matrix (column-major):'
  read *, B

  ! check for mismatch
  if (m /= q) then
    print *,'Fatal ==> Array dimension mismatch!'
    stop
  end if

  ! allocate result matrix
  allocate(C(n,q))

  ! send to subroutine
  call matmultiply_sub(A,B,C,n,m,q)
  
  ! print out result
  do i = 1,n
    write(*,'(20(F0.3,4X))') (C(i,j),j=1,q)
  end do

  ! terminate the program
  stop

end program matmultiply

subroutine matmultiply_sub(A,B,C,n,m,q)

implicit none

  ! formal vars
  integer :: n      ! row dimension of first mat
  integer :: m      ! col dimension of first mat
  integer :: q      ! col dimension of second mat
  real    :: A(n,m) ! first matrix
  real    :: B(m,q) ! second matrix
  real    :: C(n,q) ! result matrix

  ! local vars
  integer :: i ! result row counter
  integer :: j ! internal col counter

  ! set C to 0
  C = 0.0

  ! begin loop
  COL: do j = 1,q

    ROW: do i = 1,n

      ! perform summation
      C(i,j) = sum(A(i,1:m)*B(1:m,j))

    end do ROW

  end do COL

end subroutine matmultiply_sub
