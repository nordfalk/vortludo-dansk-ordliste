
all: aspell-listo.txt
clean: 
	rm -rf aspell-listo.txt aspell6-da-1.6.36-11-0* aspell

aspell:
	wget https://ftp.gnu.org/gnu/aspell/dict/da/aspell6-da-1.6.36-11-0.tar.bz2
	tar -xjvf aspell6-da-1.6.36-11-0.tar.bz2
	cd aspell6-da-1.6.36-11-0/ && ./configure DESTDIR=inst && make install && mv inst/usr/lib/aspell ..

aspell-listo.txt: kreu-aspell-liston.sh aspell
	./kreu-aspell-liston.sh > aspell-listo.txt





