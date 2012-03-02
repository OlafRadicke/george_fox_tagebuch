BUILD_NAME=komplett.pdf
RELEASE_NAME=fox_tagebuch.pdf


all: komplett.pdf

komplett.pdf:
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

clean:
	$(RM) *.tex~
	$(RM) *.ond
	$(RM) *.out
	$(RM) *.log

clean-all: clean
	$(RM) $(BUILD_NAME) 
	$(RM) $(RELEASE_NAME)

dist: all
	$(CP) $(BUILD_NAME) $(RELEASE_NAME)

