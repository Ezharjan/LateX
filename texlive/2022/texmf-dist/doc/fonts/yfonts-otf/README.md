yfonts-otf package
==================

## Description

This bundle provides OpenType versions of the Old German fonts `yfrak’,
`ygoth’ and `yswab’ designed by Yannis Haralambous in Metafont (1990).

## Contents

* yfrak.otf, ygoth.otf, yswab.otf: the three OpenType fonts
* yfonts-otf.sty        LaTeX style file defining the three font families
* yfonts-otf.pdf        Documentation in PDF format
* yfonts-otf.ltx        LaTeX source of yfonts-otf.pdf
* Erlkonig.pdf          Example: Goethe's poem typeset with these fonts
* Erlkonig.ltx          LaTeX source of Erlkonig.pdf
* README.md             (this file)

## Installation

This package is meant to be installed automatically by TeXLive, MikTeX, etc.
Otherwise, the package can be installed under TEXMFHOME or TEXMFLOCAL, f.i.
yfonts-otf in directory  texmf-local/fonts/opentype/public/yfonts-otf/
and oldgerm-otf.sty in directory  texmf-local/tex/latex/yfonts-otf/.
Documentation files and their sources can go to directory
texmf-local/doc/fonts/public/yfonts-otf/

Don't forget to rebuild the file database (mktexlsr or so) if you install
under TEXMFLOCAL.

## License

* The three fonts are licensed under the SIL Open Font License,
Version 1.1. This license is available with a FAQ at:
http://scripts.sil.org/OFL
* The other files are distributed under the terms of the LaTeX Project
Public License from CTAN archives in directory macros/latex/base/lppl.txt.
Either version 1.3 or, at your option, any later version.

## Changes

* First public version: 0.30

* v0.40:
  Substantial changes following suggestions by Keno Wehr:
  - oldgerm-otf.sty has been renamed to yfonts-otf.sty, oldgerm-otf.sty
  is kept for compatibility; it inputs yfonts-otf.sty.
  - Ligatures features reorganised: dlig and alig features deleted,
    only rlig, liga (and hlig for ygoth only) are used.
  - Ligature tz was missing in yswab.otf, added now.
  - Hungarian Umlaut was missing in yfrak.otf and yswab.otf, added now.
  - The s variant (long/short) is chosen automatically (code borrowed from
    Unifraktur Maguntia).
  
---
Copyright 2022-  Daniel Flipo  
E-mail: daniel (dot) flipo (at) free (dot) fr
