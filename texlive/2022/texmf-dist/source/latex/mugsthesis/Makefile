PACKAGE=mugsthesis

PDF = $(PACKAGE).pdf

all: ${PDF} SAMPLE

%.pdf: %.dtx $(PACKAGE).cls
	pdflatex $<
	- makeindex -s gind.ist -o $*.ind $*.idx
	- makeindex -s gglo.ist -o $*.gls $*.glo
	pdflatex $<
	while ( grep -1 '^LaTeX Warning: Label(s) may have changed' $*.log) do pdflatex $<; done

%.cls: %.ins %.dtx
	latex $<

SAMPLE: sample/$(PACKAGE)_sample.tex sample/$(PACKAGE).cls
	latexmk -pdf -cd $<

sample/%: %
	cp $^ sample

sample/$(PACKAGE).cls: $(PACKAGE).cls

.PRECIOUS: $(PACKAGE).cls

docclean:
	$(RM) *.log *.aux *.glo *.gls *.hd *.idx *.ilg *.ind *.out *.toc *.lof *.lot \
		sample/*.log sample/*.aux sample/*.out sample/*.bbl sample/*.blg sample/*.fls \
		sample/*.lof sample/*.lot sample/*.toc sample/*.fdb_latexmk sample/$(PACKAGE).cls

clean: docclean
	$(RM) $(PACKAGE).cls

distclean: clean
	$(RM) *.pdf sample/*.pdf

ctan: all clean
	COPYFILE_DISABLE=1 tar -C .. -czvf ../$(PACKAGE).tgz --exclude '.git*' --exclude '*.tgz' $(PACKAGE); mv ../$(PACKAGE).tgz .

.PHONY: all SAMPLE docclean clean distclean ctan
