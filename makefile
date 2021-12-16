OBJS = sum.o prod.o calcul.o
calcul: $(OBJS)
	gcc -o $@ $(OBJS)
sum.o: sum.c
	gcc -c $<
prod.o: prod.c
	gcc -c $*.c
calcul.o: calcul.c prod.h sum.h
	gcc -c $<