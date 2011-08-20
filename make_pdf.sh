#!/bin/bash

pdflatex komplett.tex
makeindex komplett.idx
# Index "brief"
makeindex komplett.brdx -o komplett.brnd
# Index "ort"
makeindex komplett.odx -o komplett.ond
# Index "person"
makeindex komplett.pdx -o komplett.pnd

# 2
pdflatex komplett.tex
makeindex komplett.idx
# Index "brief"
makeindex komplett.brdx -o komplett.brnd
# Index "ort"
makeindex komplett.odx -o komplett.ond
# Index "person"
makeindex komplett.pdx -o komplett.pnd

# 3
pdflatex komplett.tex