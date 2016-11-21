#!/bin/bash

set -x

rm -f *.pdf *.aux *.log
pdflatex Matthew_Leeds_*_CV.tex
pdflatex Matthew_Leeds_*_work.tex
pdflatex Matthew_Leeds_*_research.tex
pdflatex Matthew_Leeds_*_volunteer.tex
