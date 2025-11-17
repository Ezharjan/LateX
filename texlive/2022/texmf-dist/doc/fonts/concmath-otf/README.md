Concmath-otf package
====================

## Description

`Concrete-Math.otf’ is an Opentype version of the Concrete Math font
created by Ulrik Vieth in MetaFont. `concmath-otf.sty’ is a replacement
for the original `concmath.sty’ package.

## Contents

* Concrete-Math.otf    OpenType Math font
* concmath-otf.sty     LaTeX style file: replaces concmath.sty for LuaTeX/XeTeX
* concmath-otf.pdf     Documentation in PDF format
* concmath-otf.ltx     LaTeX source of concmath-otf.pdf
* unimath-concrete.pdf Modified version of unimath-symbols.pdf
                       showing available Concrete-Math symbols compared to
		               LatinModern, STIXTwo, TeXGyrePagella and DejaVu.
* unimath-concmath.ltx LaTeX source of unimath-concrete.pdf
* README.md            (this file)

## Installation

This package is meant to be installed automatically by TeXLive, MikTeX, etc.
Otherwise, the package can be installed under TEXMFHOME or TEXMFLOCAL, f.i.
Concrete-Math.otf in directory  texmf-local/fonts/opentype/public/concmath-otf/
and concmath-otf.sty in directory  texmf-local/tex/latex/concmath-otf/.  
Documentation files and their sources can go to directory
texmf-local/doc/fonts/public/concmath-otf/

Don't forget to rebuild the file database (mktexlsr or so) if you install
under TEXMFLOCAL.

Finally, make the system font database aware of the Concrete-Math font
(fontconfig under Linux).

## License

* The font `Concrete-Math.otf’ is licensed under the SIL Open Font License,
Version 1.1. This license is available with a FAQ at:
http://scripts.sil.org/OFL
* The other files are distributed under the terms of the LaTeX Project
Public License from CTAN archives in directory macros/latex/base/lppl.txt.
Either version 1.3 or, at your option, any later version.

## Changes

* First public version: 0.20

* v. 0.21
  - Integrals are now slanted by default, option "Style=upint" (+ss03)
    make them upright.
  - More integrals added: U+222F to U+2233 and U+2A11.
  - Corrected symbols prime, dprime, etc. (U+2032 to U+2037).
  
---
Copyright 2022-  Daniel Flipo  
E-mail: daniel (dot) flipo (at) free (dot) fr
