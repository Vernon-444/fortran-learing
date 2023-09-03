program to_the_power
    implicit none

    integer :: powee = 1
    integer :: power = 0
    integer :: status

    do
        print *, "Welcome to the power calculator. Please provide the numbers you want calculated."
        print *, "First number will be raised to the power of the second number. Ex: 2 5 => 2^5 = 32"
        read(*, *, iostat = status) powee, power
        if (status == 0) exit
        print *, "Please enter two integers separated by a space"
    end do

    print *, "Result", powee ** power
end program to_the_power