 
  #asmeconf: A latex template for ASME conference papers#
 
  Version 1.32 dated 2022/09/14.

  ####Overview####
  This class provides a LaTeX template for ASME Conference papers formatted according to
  the requirements on ASME's web pages (as posted in 2022):
  
  [www.asme.org/publications-submissions/proceedings/formatting-the-paper](https://www.asme.org/publications-submissions/proceedings/formatting-the-paper)
  
  A up-to-date BibTeX style for reference and citation formatting is also included.
  
  The asmeconf class provides access to many features not available in older LaTeX templates for ASME papers. It is designed to approach the following aims:

- match ASME's font current specifications and layout

- match ASME's current reference formats, and add support for DOI and URL fields (asmeconf.bst replaces asmems4.bst)

- support hyperlinks to figures, tables, equations, references, and external URLs

- support pdf bookmarks and metadata

- set author names and addresses in either the traditional grid or the more recent inline style

- provide line numbers for editing and review

- support balancing of columns on last page

- support PDF/A (archival) standards if desired

- support copyright footer for federal employees and contractors

- enable various math and text features with newtxmath and newtxtext packages

- support bold face, sans serif math in section headings

- support footnotes in section headings

- enable passages in other languages, e.g., for a translation of the abstract or a quotation

- support for many scripts: Latin, Arabic, Bengali, Chinese, Cyrillic, Devanagari, Greek, Hangul, Japanese, Tamil

  The .tex and .cls files are commented and should be self-explanatory.

  The files in this distribution are:

          README.md              --  this file
          asmeconf.cls           --  the class file
          asmeconf.bst           --  bibtex style for current ASME conference format
          asmeconf-template.tex  --  a latex template/example for this class
          asmeconf-template.pdf  --  documentation/sample paper
          asmeconf-sample.bib    --  a sample bibliography file
          *
          sample-figure-1.pdf, 
          sample-figure-2a.pdf, 
          sample-figure-2b.pdf   -- figures for the sample paper
          *
          examples/              -- a directory of examples: 
                                      -- nonlinear ode integration within LaTeX using Lua code
                                      -- fontspec for abstracts in 25 languages in one paper
                                      -- grid-style layout of author names/addresses
                                      -- footers for government employees
                                      -- asmewide.sty and example of use, for two-column equations

  This work is not a publication of ASME itself. 
  
  ####Author####
  
  John H. Lienhard V
  
  Department of Mechanical Engineering
          
  Massachusetts Institute of Technology
          
  Cambridge, MA 02139-4307 USA


 ---
 
 ####Change log####
  v1.32 (2022/09/14)
 - Incorporate patch to correct bug in hyperxmp that had impaired pdf/a compliance.
 - Add code to asmeconf.bst for empty page field in @article.

 v1.31 (2022/07/04)
 - Minor updates to address changes in the June 2022 release of LaTeX (PL 4) and the textcase package.
- Add option to asmewide.sty to suppress final page column balancing, \[raggedend\], expand error message text.

 v1.30 (2022/03/14)
 - Edit code loading fonts for Greek, Vietnamese, and cyrillic languages under pdflatex, to ensure compatibility with newtx v1.71.  These options now require LaTeX distributions 2020/02/02 or later.
 - Edit font loading for the case when luaLaTeX is called without fontspec.
 
 v1.29 (2022/03/10)
 - Include current date and venue for 2022 IMECE (subject to change)
 - Edit example .tex file for asmewide.sty to remove description of unreleased development code
 - Fix bug in nofoot option that stopped capitalization of captions
 - Adjust scale factors on typewriter (raise to 1.05) and sans serif fonts (lower to 0.91)
  
 v1.28 (2022/02/14)
 - Introduce asmewide.sty, an experimental package for setting page-width equations in a two column format. A document with examples of use is included.
 - Increase scale of sans serif font under fontspec from 0.9 to 0.94, to better match newtxtext under pdflatex

 v1.27 (2021/12/26):
 - fix bug in captions that appeared in Jan. 2021 (code not uppercasing caption text)
 - revise code to switch to grid-style author block through a single package option, \[grid\]; previous macros for grid-style remain active. 
 - various code modifications to enable older LaTeX distributions to run this class. With pdfLaTeX, TeX Live 2016 or later should be used; with luaLaTeX, TeX Live 2021 or later should be used.
 - eliminate use of \\entry{} with a single argument to produce subheadings in nomenclature; use \\EntryHeading{} instead. (**not backward compatible**)
 - incorporate recent changes to LaTeX pdf management in relation to pdf-a color profile loading and recently deprecated \\pdfcatalog command
 - minor edits in relation to url links
 - minor edits to asmeconf.bst
 - allow omission of affiliation superscript for single author or single institution
 - other minor code clean up
 
 v1.26 (2021/02/20):
 - edit title and metadata
 - put real author's name ahead of placeholder names

 v1.25 (2021/02/20):
 - edit descriptions
 - change \\mathsf in sansbold to be upright
 - move fontenc call under pdflatex options
 
 v1.24 (2021/01/26):
 - fix issue with math accents in headings & captions (Thanks to Beomjun Kye for reporting the problem)
 - adjust code for sans-serif upright Greek letters
 
 v1.23 (2021/01/18): 
 - Several minor edits and corrections
 
 v1.22 (2021/01/14): 
 - New command \\EntryHeading to produce subheadings in the nomenclature list;
 - New syntax for \\CorrespondingAuthor command with the authorgrid option (**not backward compatible**)
 - Add version field to the .bst file for publications online, manuals, and books;
 - Revise sample .bib file;
 - Enable language-specific fonts under pdflatex for Greek, Vietnamese, and cyrillic languages, with examples of abstracts in these languages;
 - Enable fontspec support for many scripts and languages under LuaLaTeX, including also Arabic, Bengali, Chinese, Japanese, Korean, and Tamil;
 - Provide example files for: authorgrid layout; integration of nonlinear ODE by LuaLaTeX; abstracts in 25 languages with fontspec+LuaLaTeX;
 - Extensively revise code that handles class options and keys, also add additional warning and error messages;
 - Create github issue tracker; 
 - Fix several minor bugs;
 - Edit documentation.

 v1.21 (2020/12/10): Edit documentation; update some usage of xparse under the hood; confirm compliance with substitutefont package. 
 
 v1.20 (2020/11/08): Add options to change copyright notice for federal employees and contractors; rename option "oldauthors" as "authorgrid"; other minor edits. Thanks to Bret Van Poppel for suggesting the federal copyright.
 
 v1.19 (2020/08/12): Add support for PDF/A archival standards (1b, 2b, 2u, 3b, 3u), as the newtx fonts have recently gained complete unicode maps; set pdf to load with single-page display rather than 2-page spread; add example of grid-style author block.
 
 v1.18 (2020/04/14): edit and expand documentation; revise sample .bib file; extensive edits to asmeconf.bst, to better support hyperlinks, to correct eid error, and for better conformance to ASME style (details listed in .bst file); add foreign language example.
 
 v1.17: set T1 font encoding with utf-8 input, ensure LuaLaTeX compatibility; load hologo and metalogo packages; edit documentation.
 
 v1.16: remove xpatch and comment packages from class file; disable \\( and \\) in pdf bookmarks to avoid warnings; edit documentation.
 
 v1.15: correct extra space left by \\CorrespondingAuthor when that author is not last; correct breakage of \\ref in captions.  Thanks to Bret Van Poppel for reporting these issues.
 
 v1.14: edit documentation; use 2020 IMECE header in layout example
 
 v1.13: add babel options for language support; minor text edits; adjust nomenclature list penalties
 
 v1.12: add support for line numbers for editing; add support for final column balancing; edit skips in nomenclature; adjust \\tolerance and \\emergencystretch (for line breaking); improve support for equation tags in captions; adopt standard \\maketitle and \\title commands; include \\versionfootnote for tracking revisions of draft.
  
 v1.11: minor adjustments to title, author, and affiliation layout
 
 v1.1:  revise several parts of the layout to match ASME's updated specifications from Summer 2019 (including author block, abstract font, placement of nomenclature, and minor spacings); add .bst support for online references and eprints; expand documentation significantly; guidance on fitting equations into columns. 
 
 v1.07: improve support for numbered section headings; allow omission of corresponding author email; edit documentation
 
 v1.06: automate bold sans math in captions and headings; small adjustments to default spacings; adjust font of paper number to 18 pt; edit documentation
 
 v1.05: minor code clean-up; change to keyvalue for to control font for superiors
 
 v1.04: fix option passing for mathalfa package; adjust \\entry to create nomenclature subheadings efficiently.
 
 
 ---
 
 ####License####

 Copyright (c) 2022 John H. Lienhard

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
 associated documentation files (the "Software"), to deal in the Software without restriction, 
 including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
 subject to the following two conditions:

 The above copyright notice and this permission notice shall be included in all copies or 
 substantial portions of the Software.

 The software is provided "as is", without warranty of any kind, express or implied, including but 
 not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. 
 In no event shall the authors or copyright holders be liable for any claim, damages or other liability, 
 whether in an action of contract, tort or otherwise, arising from, out of or in connection with the 
 software or the use or other dealings in the software.
