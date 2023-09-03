program variables_example
    implicit none

    integer :: x
    integer :: y
    integer :: z

    integer, parameter :: inches_per_foot = 12

    print *, "X = ", x, "Y = ", y, "Z = ", z, "inches_per_foot = ", inches_per_foot
    x = 3

    print *, "X = ", x, "Y = ", y, "Z = ", z
    y = 4

    print *, "X = ", x, "Y = ", y, "Z = ", z
    z = x + y

    print *, "X = ", x, "Y = ", y, "Z = ", z
    x = 1

    print *, "X = ", x, "Y = ", y, "Z = ", z

end program variables_example
