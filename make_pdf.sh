#!/bin/bash

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

# 2
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

# 3
pdflatex komplett.tex
