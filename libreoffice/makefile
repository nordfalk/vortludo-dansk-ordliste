

all: libreoffice-listo.txt
clean: 
	rm -rf dictionaries libreoffice-listo.txt

dictionaries:
	mkdir dictionaries
	cd dictionaries && wget http://www.stavekontrolden.dk/main/top/extension/dict-da-current.oxt && unzip ../dict-da-current.oxt 


libreoffice-listo.txt: dictionaries makefile
	unmunch dictionaries/da_DK.dic dictionaries/da_DK.aff  | grep -v '|' | grep "^[a-zæøå]" | cut -f1 | sort -u > libreoffice-listo.txt
#       unmunch dictionaries/eo.dic eo-skrablo.aff | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-listo.txt
#       unmunch eo-aldonoj.dic eo-skrablo.aff | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-aldonoj.txt

#	unmunch dictionaries/da_DK.dic dictionaries/da_DK.aff  | | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-listo.txt


#	unmunch dictionaries/da_DK.dic dictionaries/da_DK.aff | grep -v '/'  | grep -v "'" | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  | sort > libreoffice-listo.txt
	






