program fibonacci
    implicit none

    integer :: i
    integer :: numbers(10)

    numbers(1) = 1
    numbers(2) = 1
    do i = 3, 10
        numbers(i) = numbers(i-1) + numbers(i-2)
    end do

    do i = 1, 10
        print *, numbers(i)
    end do
end program fibonacci
