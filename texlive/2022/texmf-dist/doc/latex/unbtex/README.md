# UnBTeX: A class for bachelor, master, and doctoral thesis at the
University of Brasilia (UnB), Brazil.
Version 1.1.3 2022/09/04

Copyright (C) 2021-2022 by Henrique C. Ferreira <hcferreira@unb.br>

The package provides a class based on abnTeX and compatible with pdflatex 
and biber to prepare theses for the University of Brasilia (UnB), Brazil. 
The class also comes with a template for the various types of theses for 
ungraduated and graduated programs at UnB.

Please note that the documentation for the class and the comments in the 
templates are all written in Portuguese, the language of the target 
audience.

This package consists of the following source file: unbtex.cls.
Template files: unbtex-example.pdf, unbtex-example.tex and files within 
unbtex-example directory.
To compile the unbtex-example.tex file you should call pdflatex, biber, 
pdflatex.

Here is a history of changes:
  1.0 (2021-12-15): Initial release
  1.1 (2022-05-23): 
    . changed \codigocutter to \numerocutter 
    . the argument of \preambulo command now admits a more general text
    . updated example
  1.1.1 (2022-05-30):
    . changed abntex2 commands \orientador and \coorientador to do the 
      same as \orient and \coorient
    . changed hyphenation for \preambulo text in portuguese when english 
      language is selected
  1.1.2 (2022-07-29):
    . Page break in copyright page (ficha catalográfica) has been corrected
    . Documentation and comments improvements
  1.1.3 (2022-09-04):
    . Improved compilation time
  
## Overleaf

The template is available on [Overleaf]
(https://www.overleaf.com/latex/templates/unbtex-a-class-for-bachelor-master-and-doctoral-thesis-at-university-of-brasilia-unb/rfsxjkzprztc).

## Licence

This class file may be distributed and/or modified under the conditions
of the LaTeX Project Public License, either version 1.3 of this license
or (at your option) any later version. The latest version of this
license is in:

http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of LaTeX version
2005/12/01 or later.