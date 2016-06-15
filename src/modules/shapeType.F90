module shapeType
!
!Define the shapetype
use appleType, only : apple_type
implicit none

private
type, public :: shape_Type

  integer, pointer :: x(:)
  integer :: sz
  type(apple_type), public :: apple
  contains
    procedure, public :: init
    procedure, public :: prt
end type shape_Type

public :: create_shape
contains
!---------------------------------------------------------------
   function create_shape()
   implicit none

   class(shape_Type), pointer :: create_shape
   class(shape_Type), pointer :: shape

   allocate(shape)
   create_shape => shape
   end function create_shape
!---------------------------------------------------------------
  subroutine init(this, sz)
  implicit none
  class(shape_Type), intent(inout) :: this
  integer, intent(in) :: sz

  integer :: j

  this%sz=sz
  allocate(this%x(sz))

  do j = 1, sz
    this%x(j) = j
  enddo
  call this%apple%init_apple(sz)
  end subroutine init
!---------------------------------------------------------------
  subroutine prt(this)
  implicit none
  class(shape_Type), intent(inout) :: this
  integer :: j
  do j = 1, this%sz
    print*,this%x(j)
  enddo
  end subroutine prt


end module shapeType
