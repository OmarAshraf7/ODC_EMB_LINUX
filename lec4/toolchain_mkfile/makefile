project =main
CC =gcc
run : $(project).out
	./$(project).out
	@echo "****************Run successfuly****************"

$(project).out: $(project).o
	$(CC) $(project).o -o $(project).out
	@echo "****************Linking is done successfuly****************"

$(project).o: $(project).s 
	$(CC) $(project).s -c -o $(project).o
	@echo "****************Assembling is done successfuly****************"

$(project).s: $(project).i
	$(CC) $(project).i -S -o $(project).s
	@echo "****************compiling is done successfuly****************"

$(project).i: $(project).c
	$(CC) $(project).c -E -o $(project).i
	@echo "****************pre-processing is done successfuly****************"

clean:
	rm *.out****************
	@echo "****************Cleaned successfuly****************"

clean_all:
	rm *.i *.o *.s *.out 
	@echo "****************Cleaned all successfuly****************"






	

	