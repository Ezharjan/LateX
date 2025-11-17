# BFH-CI – Corporate Design LaTeX Templates for Bern University of Applied Sciences

Copyright (C) Marei Peischl <marei@peitex.de> & Andreas Habegger <andreas.habegger@bfh.ch>, 2021–2022

bfh 2022/03/20 v2.1.3

***************************************************************************

This material is subject to the LaTeX Project Public License version 1.3c
or later. See http://www.latex-project.org/lppl.txt for details.

***************************************************************************

[Link to the GitLab repository](https://gitlab.ti.bfh.ch/bfh-latex/bfh-ci/)

## Summary
The BFH-CI bundle provides a possibility to use the Corporate Design of BFH with LaTeX.
Therefore it contains classes as well as some helper packages and config files together with some demo files. 

The extended version of the documentation can be found online at https://latex.ti.bfh.ch.

## Installation 
Hopefully BFH-CI will become part of the popular TeX distributions. It will be possible to install the templates using TeX Live Manager or the MikTeX Console. An update of other packages might be required as well.

In case you dont have any installed TeX system the following links might be useful:
- Windows/Linux https://tug.org/texlive/acquire-netinstall.html
- MacTeX  http://tug.org/mactex/

### Logos
Due to trademark restrictions we may not provide access to the logo files for users other than BFH members. Installation instructions for the logo can be found at https://latex.ti.bfh.ch. In case the bfhlogo package can't be found the templates are configured to work without a logo file.

## Included files

## Template/Demo files

- DEMO-BFHPub.tex loading bfhpub.cls Includes the basic documentation of BFH-CI and the extension modules.
	
	bfhpub.cls also provides two variants as shown in 
	* DEMO-BFHFactsheet.tex 
	*  DEMO-BFHProjektProposal.tex 
	These load a type specific config.

- DEMO-BFHThesis.tex – theses based on bfhthesis.cls Includes mechanism for affidavit and extended title material.

- DEMO-BFHBeamer.tex – basic beamer presentations. There also exists a variant with a sidebar (DEMO-BFHBEamer-Sidebar.tex).

- DEMO-BFHSciPoster.tex – scientific posters based on tcolorbox.sty poster library.

- DEMO-BFHLetter.tex  – letter package based on scrletter.sty

## Classes & Packages

- bfhbeamer.cls – beamer base class
- bfhpub.cls – flexible base class for print publications. Loads additional department/type specific configs if available.
- bfhsciposter.cls – tcolorbos posters using BFH CI
- bfhthesis.cls – class for typesetting theses
- bfhletter.sty – package to provide letter functionality based on scrletter.sty can be used with bfhpub or any other document class

## Helper Packages
- bfhcolors.sty – color definitions
- bfhfonts.sty – font setup 
- bfhlayout.sty – general layout settings for print publications, loaded by bfhpub.cls and bfhthesis.cls
- beamer themes: 
	beamerthemeBFH.sty, beamercolorthemeBFH.sty, beamerfontthemeBFH.sty, beamerinnerthemeBFH.sty, beamerouterthemeBFH.sty, beamerouterthemeBFH-sidebar.sty  
       

## Additional custom configs
- bfh-beamerarticle.cfg – beamerarticle support for bfhbeamer/bfhpub
- bfh-factsheet.cfg – custom title config for fact sheets
- bfh-projectproposal.cfg – custom title config for project proposals
- layout modules to be loaded by all document types:
	* bfh-layout-rules.cfg – user commands to create rules like describe in the CD guideline
	* bfh-layout-tabular.cfg – tabular and tabularray layouts for BFH-CI
	* bfh-layout-boxes.cfg – tcolorbox layouts for BFH-CI
	* bfh-layout-listings.cfg – style listings using the listings package
	* bfh-layout-terminal.cfg – terminal layouts based on tcolorbox

## Translations
BFH-CI uses the translations package to provide translations for specific elements including the text marks on the logo. The translations are provided in separate files.

- bfhtranslations-english.trsl
- bfhtranslations-german.trsl
- bfhtranslations-french.trsl

# Version History

* v2.0.0 (2021/12/23) First public version on CTAN
* v2.1.0 (2022/01/24)
  - Fix some typos and translations
  - Move the bfhmodule mechanism to bfhmodule.sty
  - add a starred variant for bfhterminal environments
* v2.1.1 (2022/02/22)
  - Improve fallbacks for missing logos with bfhsciposter
  - Automatically enable handout mode for paperNotes with bfhbeamer
  - Fix rule setup for landscape mode of bfhsciposter
* v2.1.2 (2022/03/01)
  - Small layout adjustments for bfhterminal
* v2.1.3 (2022/03/20)
  - Fix partnerlogo alignment for titlepage=false in bfhlayout