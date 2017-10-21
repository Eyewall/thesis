
TEX = /usr/bin/pdflatex     # $(which pdflatex)
TEX_FLAGS = -synctex=1 --output-directory=aux_files
BIB = /usr/bin/bibtex      # which bibtex  

dissertation:
	$(TEX) ${TEX_FLAGS}  -draftmode  dissertation 
	cd aux_files; $(BIB) dissertation; exit 0
	$(TEX) ${TEX_FLAGS} -draftmode dissertation | grep warning; exit 0
	$(TEX) ${TEX_FLAGS} dissertation	    | grep warning; exit 0
	mv aux_files/dissertation.pdf ./
	mv aux_files/dissertation.synctex.gz ./	


signature:
	$(TEX) ${TEX_FLAGS}  -draftmode  signature_page
	$(TEX) ${TEX_FLAGS}  signature_page
	mv aux_files/signature_page.pdf ./	
