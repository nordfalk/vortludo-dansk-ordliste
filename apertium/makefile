

all: listo.txt
clean: 
	rm -rf dictionaries libreoffice-listo.txt

apertium-dan:
	git clone https://github.com/apertium/apertium-dan


listo.txt: apertium-dan makefile
	lt-expand apertium-dan/apertium-dan.dan.dix | grep "^[a-zæøå]" | grep -v 'NON_ANALYSIS' | cut -f1 -d ':' | grep -v ' ' | grep -v '-' | grep -v '\.' | sort -u > listo.txt




