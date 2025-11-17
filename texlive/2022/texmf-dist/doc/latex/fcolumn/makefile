.SUFFIXES: .dtx .glo .gls .idx .ind .ins .pdf .sty 
DIST=fcolumn.dtx fcolumn.ins fcolumn.pdf makefile README

.ins.sty:
	pdftex $<

.dtx.glo:
	pdflatex $<

.dtx.idx:
	pdflatex $<

.glo.gls:
	makeindex -s gglo.ist -o fcolumn.gls fcolumn.glo

.idx.ind:
	makeindex -s gind.ist -o fcolumn.ind fcolumn.idx

.dtx.pdf:
	pdflatex $<

all: fcolumn.sty fcolumn.pdf

install:
	pdftex fcolumn.ins

dist: $(DIST)
	mkdir FCv1.4.1temp; cp $(DIST) FCv1.4.1temp; tar -czf fcolumn.tgz FCv1.4.1temp; rm -r FCv1.4.1temp

fcolumn.pdf: fcolumn.dtx fcolumn.gls fcolumn.ind fcolumn.sty
fcolumn.glo  fcolumn.idx: fcolumn.dtx
fcolumn.ind: fcolumn.idx
fcolumn.gls: fcolumn.glo

.PHONY: clean
clean:
	-rm fcolumn.aux fcolumn.glo fcolumn.gls fcolumn.idx fcolumn.ilg fcolumn.ind \
     fcolumn.log fcolumn.out fcolumn.pdf fcolumn.sty fcolumn.tgz
