program take_notes
    implicit none
    integer :: unit
    integer :: status
    character(len=50) :: filename
    character(len=200) :: notes

    print *, "Welcome to the note taking tool!"
    print *, "What do you want your file name to be? (include .txt at end)"
    read(*,*) filename

    open(newunit = unit, file = filename, position = "APPEND")

    do
        print *, "Add notes below. If finished, simply press ENTER or type 'DONE'"
        read(*, '(A)') notes
        if (notes == "") exit
        if (notes == "DONE") exit

        ! append notes to the file opened on line 12
        write(unit, '(A)') trim(notes)
    end do

    ! done entering notes, clean up time!
    print *, "Thank you for using our tool, have a great day!"
    close(unit)

end program take_notes
