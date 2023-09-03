program user_input
    implicit none

    integer :: age = 0
    character (len=20) :: hometown = "UNKNOWN"
    character (len=20) :: name = "You Silly Goose"
    integer :: status

    do
        print *, "What is your name, age, and where you're from?"
        read(*, *, iostat=status) name, age, hometown
        if (status == 0) exit
        print *, "Sorry, I didn't understand that."
    end do


    print *, "Hello, " // trim(name) // ", age: ", age
    print *, "How is the weather in " // trim(hometown) // "?"
end program user_input