program cholesky

implicit none

  integer           :: n      ! number of rows/cols in matrix
  integer           :: i      ! loop counter
  real, allocatable :: A(:,:) ! input matrix

  ! ask user for dimensions of matrix
  print *,'Enter number of rows/cols in matrix (must be square) '
  read *,n

  ! allocate A and L
  allocate(A(n,n))

  ! have user enter matrix
  print *,'Enter matrix in column-major order'
  read *,A

  ! perform cholesky decomposition
  call cholesky_sub(A,n)

  ! print matrix to user
  print *,'Result::'
  do i = 1,n
    print *, A(i,:)
  end do

  ! terminate the program
  stop

end program cholesky

subroutine cholesky_sub(A,n)

implicit none

  ! formal vars
  integer :: n      ! number of rows/cols in matrix
  real    :: A(n,n) ! matrix to be decomposed

  ! local vars
  integer :: j      ! iteration counter

  ! begin loop
  chol: do j = 1,n

    ! perform diagonal component
    A(j,j) = sqrt(A(j,j) - dot_product(A(j,1:j-1),A(j,1:j-1)))

    ! perform off-diagonal component
    if (j < n) A(j+1:n,j) = (A(j+1:n,j) - matmul(A(j+1:n,1:j-1),A(j,1:j-1))) / &
   &           A(j,j)

  end do chol

end subroutine cholesky_sub
