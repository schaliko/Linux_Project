# Compiler
CC = g++

all: bank deinitializer

bank: bank_options.o client.o initializer.o bank.h
	g++ bank_options.o client.o initializer.o bank.h -o bank

deinitializer: deinitializer.o
	g++ deinitializer.o -o deinitializer

# %.o: %.cpp $(HEADER)
# 	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o bank deinitializer