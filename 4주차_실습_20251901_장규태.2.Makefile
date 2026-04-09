CC = gcc
TARGET = animal.exe
OBJECTS = dog.o blackcow.o turtle.o main.o

$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

dog.o: dog.c animal.h
	$(CC) -c -o dog.o dog.c

blackcow.o: blackcow.c animal.h
	$(CC) -c -o blackcow.o blackcow.c

turtle.o: turtle.c animal.h
	$(CC) -c -o turtle.o turtle.c

main.o: main.c animal.h
	$(CC) -c -o main.o main.c

.PHONY: clean
clean:
	rm -f *.o $(TARGET)
