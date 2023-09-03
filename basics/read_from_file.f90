program read_file
    implicit none

    integer :: age = 0
    character (len=20) :: hometown = "UNKNOWN"
    character (len=20) :: name = "You Silly Goose"
    integer :: status
    integer :: unit

    open(newunit=unit, file="hello_input.txt", status="OLD")

    read(unit, *, iostat=status) name, age, hometown

    close(unit)

    print *, "Hello, " // trim(name) // ", age: ", age
    print *, "How is the weather in " // trim(hometown) // "?"


end program read_file