default: gamebooklib_test.pdf gamebooklib.pdf gamebooklib.zip tidy

gamebooklib_test.pdf : gamebooklib_test.tex gamebooklib.sty
	pdflatex \\nonstopmode\\input gamebooklib_test.tex && \
	pdflatex \\nonstopmode\\input gamebooklib_test.tex

gamebooklib.sty : gamebooklib.dtx gamebooklib.ins
	rm -f gamebooklib.sty && latex gamebooklib.ins

gamebooklib.pdf : gamebooklib.sty gamebooklib.dtx
	pdflatex \\nonstopmode\\input gamebooklib.dtx && \
	makeindex -s gglo.ist -o gamebooklib.gls gamebooklib.glo && \
	makeindex -s gind.ist -o gamebooklib.ind gamebooklib.idx && \
	pdflatex \\nonstopmode\\input gamebooklib.dtx

gamebooklib.zip : gamebooklib_countpagesperseed.sh gamebooklib.dtx gamebooklib.ins gamebooklib.pdf gamebooklib_test.pdf gamebooklib_test.tex Makefile README
	cd ..; zip gamebooklib/gamebooklib.zip \
	gamebooklib/gamebooklib_countpagesperseed.sh \
	gamebooklib/gamebooklib.dtx gamebooklib/gamebooklib.ins \
	gamebooklib/gamebooklib.pdf gamebooklib/gamebooklib_test.pdf \
	gamebooklib/gamebooklib_test.tex gamebooklib/Makefile \
	gamebooklib/README; cd gamebooklib

tidy:
	rm -f *.log *.ind *.idx *.glo *.gls *.aux *.ilg
# TODO: should we really be deleting the .sty? Check CTAN rules.
clean: tidy
	rm -f *~ *.sty
