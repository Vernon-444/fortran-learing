todo4: todo_m.o todo4.o
	gfortran todo_m.o todo4.o -o todo4

todo4.o: todo4.f90 todo_m.mod
	gfortran -c todo4.f90 -o todo4.o

todo_m.o todo_m.mod: todo_m.f90
	gfortran -c todo_m.f90 -o todo_m.o

.PHONY: clean
clean:
	rm -f todo4 todo4.o todo_m.o todo_m.mod
