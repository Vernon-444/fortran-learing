program write_to_file
    implicit none

    integer :: age = 0
    character (len=20) :: hometown = "UNKNOWN"
    character (len=20) :: name = "You Silly Goose"
    integer :: status

    ! unit to specify which file to open
    integer :: unit

    do
        print *, "What is your name, age, and where you're from?"
        read(*, *, iostat=status) name, age, hometown
        if (status == 0) exit
        print *, "Sorry, I didn't understand that."
    end do

    ! if file exists, delete and replace with whatever we write
    open(newunit=unit, file="hello.txt", status="REPLACE")

    write(unit, *) "Hello, " // trim(name) // ", age: ", age
    write(unit, *) "How is the weather in " // trim(hometown) // "?"

    ! clean up after yourself
    close(unit)

end program write_to_file