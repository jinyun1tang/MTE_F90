module appleType

implicit none

 private

type, public :: apple_type
  integer, pointer :: y(:)
  integer :: sz
  contains
    procedure, public :: init_apple
end type apple_type

contains

!---------------------------------------------------------------
  subroutine init_apple(this, sz)
  implicit none
  class(apple_type), intent(inout) :: this
  integer, intent(in) :: sz
  integer :: j
  this%sz = sz
  allocate(this%y(sz))

  do j = 1, sz
    this%y(j)=j*2
  enddo

  end subroutine init_apple
end module appleType
