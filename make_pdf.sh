#!/bin/bash

pdflatex komplett.tex
makeindex komplett.idx
pdflatex komplett.tex
pdflatex komplett.tex