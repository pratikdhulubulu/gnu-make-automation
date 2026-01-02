INC = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)
SRC = $(shell find -iname "*.c")
OBJ = $(SRC:%.c=%.o)

all: main

run : all
	@./main

main: $(OBJ)
	@gcc $^ -o $@
	@echo Build Done!

%.o: %.c
	@gcc $(INC) -c $^ -o $@
	@echo compiling $^

clean:
	@rm -f main $(OBJ)
	@echo "Clean Completed!"