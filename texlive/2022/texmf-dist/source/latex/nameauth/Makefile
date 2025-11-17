#Copyright (C) 2020 by Charles P. Schaum <charles[dot]schaum@comcast.net>
#-------------------------------------------------------
#
#This file may be distributed and/or modified under the
#conditions of the LaTeX Project Public License, either version 1.3
#of this license or (at your option) any later version.
#The latest version of this license is in:
#
#   http://www.latex-project.org/lppl.txt
#
#and version 1.3 or later is part of all distributions of LaTeX 
#version 2005/12/01 or later.
#
# Name of package
NAME  = nameauth
# LaTeX engine to use for package; below is the default.
# One can choose from latex, pdflatex, xelatex, lualatex, dvilualatex.
ENGINE ?= pdflatex
# Shell to use; default is bash
SHELL = bash
# Value of current working directory
PWD   = $(shell pwd)
# Package version info
VERS  = $(shell ltxfileinfo -v $(NAME).dtx|sed -e 's/^v//')
# Local, system-wide tex tree
LOCAL = $(shell kpsewhich --var-value TEXMFLOCAL)
# Tex tree in user's home directory
UTREE = $(shell kpsewhich --var-value TEXMFHOME)
#
# Default make target is release and its dependencies
release:    $(NAME).pdf
#
# The testing target also compiles the examples file.
testing:    $(NAME).pdf examples.pdf

#
# This is the recipe for examples.pdf. It will work also for dvi output.
examples.pdf    : examples.tex
	$(ENGINE) --interaction=nonstopmode examples > /dev/null
	$(ENGINE) --interaction=nonstopmode examples > /dev/null
	if [ -f examples.idx ]; then makeindex -o examples.ind examples.idx; fi
	if [ -f examples.rdx ]; then makeindex -o examples.rnd examples.rdx; fi
	$(ENGINE) --interaction=nonstopmode examples > /dev/null
	$(ENGINE) --interaction=nonstopmode examples > /dev/null
	if [ -f examples.dvi ]; then dvipdf examples; fi
	if [ -f examples.out.ps ]; then rm examples.out.ps; fi
#
# This is the recipe for the package docs. It will work also for dvi output.
$(NAME).pdf : $(NAME).dtx nameauth.sty nameauth.ins
	$(ENGINE) -shell-escape -recorder -interaction=batchmode $(NAME).dtx >/dev/null
	$(ENGINE) --recorder --interaction=nonstopmode $(NAME).dtx > /dev/null
	if [ -f $(NAME).glo ]; then makeindex -q -s gglo.ist -o $(NAME).gls $(NAME).glo; fi
	if [ -f $(NAME).idx ]; then makeindex -q -s gind.ist -o $(NAME).ind $(NAME).idx; fi
	$(ENGINE) --recorder --interaction=nonstopmode $(NAME).dtx > /dev/null
	$(ENGINE) --recorder --interaction=nonstopmode $(NAME).dtx > /dev/null
	if [ -f $(NAME).dvi ]; then dvipdf $(NAME); fi
#
# These are the recipes for all the files that need to be extracted
# from the dtx file. Any one of them simply extracts the following:
# README.md, nameauth.ins, nameauth.sty, examples.tex
#
# Once any one of these recipes is run, the rest will be satisfied.
# But they need to be there for dependencies to work best.
README.md : $(NAME).dtx
	pdftex $(NAME).dtx

nameauth.ins : $(NAME).dtx
	pdftex $(NAME).dtx

nameauth.sty : $(NAME).dtx
	pdftex $(NAME).dtx

examples.tex : $(NAME).dtx
	pdftex $(NAME).dtx
#
# Using this recipe deletes the auxiliary and log files
clean:
	rm -f $(NAME).{aux,fls,glo,gls,hd,idx,ilg,ind,ins,log,out,toc}
	rm -f examples.{rdx,rnd,aux,fls,glo,gls,hd,idx,ilg,ind,ins,log,out,toc}
#
# Using this recipe cleans also all generated files
distclean: clean
	rm -f $(NAME).{dvi,pdf,sty,synctex.gz,"synctex(busy)"} README.md
	rm -f examples.{dvi,pdf,synctex.gz,"synctex(busy)",tex}
#
# Using this recipe deletes files for testong
testclean:
	rm -f examples.{aux,fls,glo,gls,hd,idx,ilg,ind,ins,log,out,toc}
	rm -f examples.{dvi,pdf,synctex.gz,"synctex(busy)"}
#
# This recipe installs the package release into the user's tree
inst: release
	mkdir -p $(UTREE)/{tex,source,doc}/latex/$(NAME)
	cp $(NAME).dtx $(UTREE)/source/latex/$(NAME)
	cp Makefile $(UTREE)/source/latex/$(NAME)
	cp $(NAME).sty $(UTREE)/tex/latex/$(NAME)
	cp $(NAME).pdf $(UTREE)/doc/latex/$(NAME)
	cp examples.tex $(UTREE)/doc/latex/$(NAME)
	cp README.md $(UTREE)/doc/latex/$(NAME)
#
# This recipe installs the package release into the system tree
install: release
	sudo mkdir -p $(LOCAL)/{tex,source,doc}/latex/$(NAME)
	sudo cp $(NAME).dtx $(LOCAL)/source/latex/$(NAME)
	sudo cp Makefile $(LOCAL)/source/latex/$(NAME)
	sudo cp $(NAME).sty $(LOCAL)/tex/latex/$(NAME)
	sudo cp $(NAME).pdf $(LOCAL)/doc/latex/$(NAME)
	sudo cp examples.tex $(LOCAL)/doc/latex/$(NAME)
	sudo cp README.md $(LOCAL)/doc/latex/$(NAME)
#
# This recipe creates a zip file for upload to CTAN
zip: release
	ln -sf . $(NAME)
	zip -Drq $(PWD)/$(NAME)-$(VERS).zip $(NAME)/{README.md,examples.tex,Makefile,$(NAME).{pdf,dtx}}
	rm $(NAME)
