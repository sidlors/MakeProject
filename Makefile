OBJS = main.o salida.o calculadora.o
BINARY = programa
all: programa
	
# Esta regla compila el programa principal.
programa: $(OBJS)
	gcc -o $(BINARY) $(OBJS)
main.o: main.c funciones.h
	gcc -c main.c
salida.o: salida.c funciones.h
	gcc -c salida.c
calculadora.o: calculadora.c funciones.h
	gcc -c calculadora.c

#Esta regla es para limpiar los archivos objetivo
clean:
	rm -f $(BINARY) $(OBJS)

