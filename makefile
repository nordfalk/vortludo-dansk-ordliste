all: granda-listo
clean: 
	cd aspell; make clean
	cd libreoffice; make clean
	cd apertium; make clean

granda-listo:
	cd aspell; make
	cd libreoffice; make
	cd apertium; make
	sort -u apertium/listo.txt aspell/aspell-listo.txt libreoffice/libreoffice-listo.txt > granda-listo.txt
	
publikigo: granda-listo
	# zip -9 esperanto-ordlister.zip revo/revo-listo.txt granda-listo.txt
	# rm -f vortlistoj.7z
	7z a ordliste-dansk.7z granda-listo.txt
	
esploro:
	wc -l apertium/listo.txt libreoffice/libreoffice-listo.txt aspell/aspell-listo.txt granda-listo.txt
	#echo 'Tiom da vortoj estas en ReVo, sed ne en la literumkontroloj'
	#comm -13 esperanto-stavekontrol.txt revo/revo-listo.txt  | wc



