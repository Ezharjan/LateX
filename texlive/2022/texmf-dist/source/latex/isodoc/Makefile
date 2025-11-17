NAME  = isodoc
SHELL = bash
PWD   = $(shell pwd)
VERS  = $(shell ltxfileinfo -v $(NAME).dtx|sed -e 's/^v//')
LOCAL = $(shell kpsewhich --var-value TEXMFLOCAL)
UTREE = $(shell kpsewhich --var-value TEXMFHOME)
LTX = lualatex -shell-escape -recorder -interaction=batchmode >/dev/null

$(NAME).pdf: $(NAME).dtx accept.pdf invoice.pdf letter.pdf logoletter.pdf ntgletter.pdf logo1.pdf logo2.pdf
	$(LTX) $(NAME).dtx
	if [ -f $(NAME).glo ]; then makeindex -q -s gglo.ist -o $(NAME).gls $(NAME).glo; fi
	if [ -f $(NAME).idx ]; then makeindex -q -s gind.ist -o $(NAME).ind $(NAME).idx; fi
	$(LTX) $(NAME).dtx
	$(LTX) $(NAME).dtx
accept.pdf: accept.tex accept.sty acceptform.jpg ntgcolor.png
	chmod 755 *.sh
	texi2dvi -p -q accept.tex
invoice.pdf: invoice.tex invoice.sty
	texi2dvi -p -q invoice.tex
letter.pdf: letter.tex letter.sty signmarked.png
	texi2dvi -p -q  letter.tex
logoletter.pdf: logoletter.tex logoletter.sty body.tex shiva-shakti.png signblue.png
	LATEX=lualatex texi2dvi  -q logoletter.tex
logo1.pdf logo2.pdf: logoletter.pdf
	pdfseparate -l 2 logoletter.pdf logo%d.pdf
ntgletter.pdf: ntgletter.tex ntgletter.sty ntgcolor.png signshort.png signlong.png
	texi2dvi -p -q ntgletter.tex
iolang ChopinScript.ttf body.tex acceptform.jpg ntgcolor.png shiva-shakti.png sign.png signblue.png signlong.png signmarked.png signshort.png: files.zip
	unzip -oqDD files.zip
	mkdir -p ~/.fonts
	cp -u *.ttf ~/.fonts
files.zip: files.zip.uue
	uudecode files.zip.uue
files.zip.uue accept.tex accept.sty invoice.tex invoice.sty letter.tex letter.sty logoletter.tex logoletter.sty ntgletter.tex ntgletter.sty: isodoc.dtx isodoc.ins
	luatex isodoc.ins
clean: iolang
	./iolang -i 2> /dev/null
	echo lang iolang README Makefile files.zip{,.uue} \
	{Chopin,Fontin}*.ttf acceptform.jpg body.tex listkeys.sh logo[12].pdf \
	{ntgcolor,shiva-shakti,sign{,blue,long,marked,short}}.png \
	{accept,invoice,isodoc,{,logo,ntg}letter}.{aux,fls,log,out,pdf,sty,t2d,tex,cls,fls,glo,gls,idx,ilg,ind,sty,toc}|xargs rm -rf
inst: $(NAME).pdf
	mkdir -p $(UTREE)/{tex,source,doc}/latex/$(NAME)
	rm -rf $(UTREE)/{tex,source,doc}/latex/$(NAME)/*
	cp $(NAME).dtx $(UTREE)/source/latex/$(NAME)
	cp $(NAME).cls $(UTREE)/tex/latex/$(NAME)
	cp $(NAME).pdf README.md $(UTREE)/doc/latex/$(NAME)
install: $(NAME).pdf
	sudo mkdir -p $(LOCAL)/{tex,source,doc}/latex/$(NAME)
	sudo rm -rf $(LOCAL)/{tex,source,doc}/latex/$(NAME)/*
	sudo cp $(NAME).dtx $(LOCAL)/source/latex/$(NAME)
	sudo cp $(NAME).cls $(LOCAL)/tex/latex/$(NAME)
	sudo cp $(NAME).pdf README.md $(LOCAL)/doc/latex/$(NAME)
zip: $(NAME).pdf
	ln -sf . $(NAME)
	zip -Drq $(PWD)/$(NAME)-$(VERS).zip $(NAME)/{README.md,$(NAME).{pdf,dtx,ins}}
	rm $(NAME)
help:
	@ echo "make help	Print this help"
	@ echo
	@ echo "make		Create the documentation"
	@ echo "                (note: creates some truetype font files in ~/.fonts)"
	@ echo
	@ echo "make inst	Install the necessary files in the TEXMFHOME tree"
	@ echo
	@ echo "make install	Install the necessary files in the TEXMFLOCAL tree"
	@ echo "		(You must have sudo rights)"
	@ echo
	@ echo "make zip	Create a zip file for upload to CTAN"
	@ echo
	@ echo "make clean	Remove all regeneratable files, except isodoc-*.zip"
