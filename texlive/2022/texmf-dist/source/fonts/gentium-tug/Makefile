# $Id: Makefile 157 2022-05-31 22:20:57Z karl $
# This file is part of the Gentium package for TeX.
# It is licensed under the Expat License, see doc//README for details.
#
# Here is just a way to record the commands to test the new boundary
# ligatures to automatically make the final sigma with the lgr encoding.
# From Ralf Stubner, July 2019.

fontdir = ../../../fonts
tfmdir = $(fontdir)/tfm/public/gentium-tug

mapdir_pdftex = $(fontdir)/map/pdftex/gentium-tug
mapdir_dvips = $(fontdir)/map/dvips/gentium-tug

default: try-ital

# the diff should show differences, hence exit nonzero.
try-reg: lgr-gentiumplus-regular.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumPlus-Regular.afm \
	&& pltotf GentiumPlus-Regular \
	&& tftopl GentiumPlus-Regular GentiumPlus-Regular \
	&& ! diff -u lgr-gentiumplus-regular.pl GentiumPlus-Regular.pl
#
# clearly this could all be factored out, but maybe we will never touch
# this stuff again, so ...
try-ital: lgr-gentiumplus-italic.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumPlus-Italic.afm \
	&& pltotf GentiumPlus-Italic \
	&& tftopl GentiumPlus-Italic GentiumPlus-Italic \
	&& ! diff -u lgr-gentiumplus-italic.pl GentiumPlus-Italic.pl
# new fonts in version 6.101
try-bold: lgr-gentiumplus-bold.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumPlus-Bold.afm \
	&& pltotf GentiumPlus-Bold \
	&& tftopl GentiumPlus-Bold GentiumPlus-Bold \
	&& ! diff -u lgr-gentiumplus-bold.pl GentiumPlus-Bold.pl
try-boldital: lgr-gentiumplus-bolditalic.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumPlus-BoldItalic.afm \
	&& pltotf GentiumPlus-BoldItalic \
	&& tftopl GentiumPlus-BoldItalic GentiumPlus-BoldItalic \
	&& ! diff -u lgr-gentiumplus-bolditalic.pl GentiumPlus-BoldItalic.pl
# GentiumBookPlus family
try-book-reg: lgr-gentiumbook-regular.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumBookPlus-Regular.afm \
	&& pltotf GentiumBookPlus-Regular \
	&& tftopl GentiumBookPlus-Regular GentiumBookPlus-Regular \
	&& ! diff -u lgr-gentiumbook-regular.pl GentiumBookPlus-Regular.pl
try-book-ital: lgr-gentiumbook-italic.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumBookPlus-Italic.afm \
	&& pltotf GentiumBookPlus-Italic \
	&& tftopl GentiumBookPlus-Italic GentiumBookPlus-Italic \
	&& ! diff -u lgr-gentiumbook-italic.pl GentiumBookPlus-Italic.pl
try-book-bold: lgr-gentiumbook-bold.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumBookPlus-Bold.afm \
	&& pltotf GentiumBookPlus-Bold \
	&& tftopl GentiumBookPlus-Bold GentiumBookPlus-Bold \
	&& ! diff -u lgr-gentiumbook-bold.pl GentiumBookPlus-Bold.pl
try-book-boldital: lgr-gentiumbook-bolditalic.pl
	afm2pl -p $(fontdir)/enc/dvips/gentium-tug/gentium-lgr.enc \
		-l lig/gentium-lgr.lig \
		$(fontdir)/afm/public/gentium-tug/GentiumBookPlus-BoldItalic.afm \
	&& pltotf GentiumBookPlus-BoldItalic \
	&& tftopl GentiumBookPlus-BoldItalic GentiumBookPlus-BoldItalic \
	&& ! diff -u lgr-gentiumbook-bolditalic.pl GentiumBookPlus-BoldItalic.pl


# the original pl's, for comparison.
lgr-gentiumplus-regular.pl:
	tftopl $(tfmdir)/lgr-gentiumplus-regular $@ || rm -f $@
lgr-gentiumplus-italic.pl:
	tftopl $(tfmdir)/lgr-gentiumplus-italic $@ || rm -f $@
lgr-gentiumplus-bold.pl:
	tftopl $(tfmdir)/lgr-gentiumplus-bold $@ || rm -f $@
lgr-gentiumplus-bolditalic.pl:
	tftopl $(tfmdir)/lgr-gentiumplus-bolditalic $@ || rm -f $@
lgr-gentiumbook-regular.pl:
	tftopl $(tfmdir)/lgr-gentiumbook-regular $@ || rm -f $@
lgr-gentiumbook-italic.pl:
	tftopl $(tfmdir)/lgr-gentiumbook-italic $@ || rm -f $@
lgr-gentiumbook-bold.pl:
	tftopl $(tfmdir)/lgr-gentiumbook-bold $@ || rm -f $@
lgr-gentiumbook-bolditalic.pl:
	tftopl $(tfmdir)/lgr-gentiumbook-bolditalic $@ || rm -f $@

# dist just copies the working directory, so have to install and clean.
install:
	mv GentiumPlus-Regular.tfm $(tfmdir)/lgr-gentiumplus-regular.tfm
	mv GentiumPlus-Italic.tfm $(tfmdir)/lgr-gentiumplus-italic.tfm
	mv GentiumPlus-Bold.tfm $(tfmdir)/lgr-gentiumplus-bold.tfm
	mv GentiumPlus-BoldItalic.tfm $(tfmdir)/lgr-gentiumplus-bolditalic.tfm
	mv GentiumBookPlus-Regular.tfm $(tfmdir)/lgr-gentiumbook-regular.tfm
	mv GentiumBookPlus-Italic.tfm $(tfmdir)/lgr-gentiumbook-italic.tfm
	mv GentiumBookPlus-Bold.tfm $(tfmdir)/lgr-gentiumbook-bold.tfm
	mv GentiumBookPlus-BoldItalic.tfm $(tfmdir)/lgr-gentiumbook-bolditalic.tfm

clean:
	rm -f GentiumPlus-* GentiumBookPlus-* lgr-gent*.pl

dist: clean
	./make-zip-4CTAN.sh

# generate *.tfm, *.map, *.fd; also *.enc files for small caps
support-files:
	./generate-support-files.rb
	# make maps containing everything
	cd $(mapdir_pdftex) && cat gentiumplus-truetype.map gentiumbook-truetype.map > gentium-truetype.map
	cd $(mapdir_dvips) && cat gentiumplus-type1.map gentiumbook-type1.map > gentium-type1.map
