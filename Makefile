BUILD_NAME=komplett.pdf
RELEASE_NAME=fox_tagebuch.pdf



komplett.pdf: komplett.tex
	pdflatex komplett.tex
	makeindex -L komplett.idx
	# Index "bibel"
	makeindex -L komplett.bidx -o komplett.bind
	# Index "brief"
	makeindex -L komplett.brdx -o komplett.brnd
	# Index "buch"
	makeindex -L komplett.budx -o komplett.bund
	# Index "ort"
	makeindex -L komplett.odx -o komplett.ond
	# Index "person"
	makeindex -L komplett.pdx -o komplett.pnd
	# Durchgang 2
	pdflatex komplett.tex
	makeindex -L komplett.idx
	# Index "bibel"
	makeindex -L komplett.bidx -o komplett.bind
	# Index "brief"
	makeindex -L komplett.brdx -o komplett.brnd
	# Index "buch"
	makeindex -L komplett.budx -o komplett.bund
	# Index "ort"
	makeindex -L komplett.odx -o komplett.ond
	# Index "person"
	makeindex -L komplett.pdx -o komplett.pnd
	# Durchgang 3
	pdflatex komplett.tex

clean :
	$(RM) *.tex~
	$(RM) *.ond
	$(RM) *.out
	$(RM) *.aux
	$(RM) *.log
	$(RM) *.idx
	$(RM) *.ilg
	$(RM) *.ind
	$(RM) *.odx
	$(RM) *.budx
	$(RM) *.bund
	$(RM) *.budx
	$(RM) *.bind
	$(RM) *.bidx
	$(RM) *.backup

clean-all : clean
	$(RM) $(BUILD_NAME) 
	$(RM) $(RELEASE_NAME)

dist : all
	$(CP) $(BUILD_NAME) $(RELEASE_NAME)


all : komplett.pdf

.PHONY : clean dist clean-all  dist-pdf