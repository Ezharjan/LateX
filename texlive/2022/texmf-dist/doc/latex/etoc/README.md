<!-- -->

    Source:  etoc.dtx (1.09f)
    Author:  Jean-Francois Burnol
    Info:    Completely customisable TOCs
    License: LPPL 1.3c
    Copyright (C) 2012-2022 Jean-Francois Burnol.
    <jfbu at free dot fr>

ABSTRACT
========

The etoc package gives to the user complete control on how the entries
of the table of contents should be constituted from the *name*,
*number*, and *page number* of each sectioning unit. This goes via the
definition of *line styles* for each sectioning level used in the
document. The package provides its own custom line styles. Simpler
ones are given as examples in the documentation. The simplest usage
will be to take advantage of the layout facilities of packages dealing
with list environments.

Regarding the *global toc display*, etoc provides pre-defined styles
based on a multi-column format, with, optionally, a ruled title or
framed contents.

The `\tableofcontents` command may be used arbitrarily many times and
it has a variant `\localtableofcontents` which prints tables of
contents 'local' to the current surrounding document unit. An
extension of the `\label/\ref` syntax allows to reproduce (with
another layout) a local table of contents defined somewhere else in
the document.

Via *depth tags*, one gets an even finer control for each table of
contents of which sectioning units it should, or not, display.

The formatting inherited (and possibly customized by other packages)
from the document class will be used when in compatibility mode.

The assignment of levels to the sectioning units can be changed at any
time, and etoc can thus be used in a quite general manner to create
custom ''lists of'', additionally to the tables of contents related to
the document sectioning units. No auxiliary file is used additionally
to the standard `.toc` file.

INSTALLATION
============

To extract the package (.sty) and driver (.tex) files from etoc.dtx,
execute `etex etoc.dtx`.

It is also possible to execute latex or pdflatex directly on etoc.dtx.

To produce etoc.pdf one can run pdflatex (thrice) directly on etoc.dtx or on
the file etoc.tex which was extracted from `etex etoc.dtx` step.

Options can be set in etoc.tex:

- scrartcl class options (paper size, font size, ...)
- with or without source code,
- with dvipdfmx or with latex+dvips or pdflatex.

Since release 1.08h pdflatex is the default in etoc.tex (prior it
was latex+dvipdfmx as it produces smaller PDFs) in order to allow
inclusion via the use of package `attachfile` of about 25 code
samples as file attachment annotations.

Installation:

    etoc.sty    -> TDS:tex/latex/etoc/etoc.sty
    etoc.dtx    -> TDS:source/latex/etoc/etoc.dtx
    etoc.pdf    -> TDS:doc/latex/etoc/etoc.pdf
    README.md   -> TDS:doc/latex/etoc/README.md

The other files may be discarded.

LICENSE
=======

This Work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, in its
version 1.3c. This version of this license is in

> <http://www.latex-project.org/lppl/lppl-1-3c.txt>

and the latest version of this license is in

> <http://www.latex-project.org/lppl.txt>

and version 1.3 or later is part of all distributions of
LaTeX version 2005/12/01 or later.

The Author of this Work is Jean-Francois Burnol <jfbu at free dot fr>

This Work consists of the main source file etoc.dtx and the derived files
etoc.sty, etoc.tex, etoc.pdf, etoc.dvi.

RECENT CHANGES
==============

1.09f \[2022/08/30\]
--------------------

No more shipping of a German translation of the documentation, as
it was last updated in April 2015.

(etoc.pdf) User level commands hyperlink from their code source
definitions to their descriptions in the documentation part.  Macros
used in the code source hyperlink to where they first got defined
there.

Wrap the `\etocpartname` (from etoc's package provided toc line style)
together with the part number in a potential common hyperlink.

Try to sync the emulation of the global display style with KOMA-script
`v3.37` (in particular regarding the `noparskipfake` KOMA toc feature).

Improve documentation of some aspects under `memoir` class.

Remove the `\nonumberline` token, even though empty, from the meaning of
`\etocthename` (KOMA-script classes).

Add `\etocimmediatedepthtag.toc` to work around problems related to
`\include` (see user doc).  Thanks to Norman Ramsey who reported the problem
and proposed a work-around in July 2016.  Apologies for the somewhat longish
delay in incorporating it...

Also add `\etocimmediatesettocdepth.toc`.

Also add `\etocimmediatetoccontentsline` and its starred variant.

Also add `\etocimmediatesetlocaltop.toc`.

Fix an obscure bug (see source code comments) in the `\etocsetlocaltop.toc`
mechanism.

1.09e \[2021/09/23\]
--------------------

Needed (if etoc is used without hyperref) updates to
internal macros to prepare for the upcoming LaTeX November
2021 change to `\contentsline`.

Related updates to the user macro `\etoctoccontentsline`.

1.09d \[2021/07/13\]
--------------------

Some minor synching with tableof 1.4c.

Add `\etockeeporiginaltableofcontents` to provide a work-around to a
compatibility issue with listings's `\lstlistoflistings`, which abuses
`\tableofcontents` for doing something unrelated to the actual contents.
Thanks to Denis Bitouzé for report.

Usage: `\usepackage{etoc}\etockeeporiginaltableofcontents`, then
however you must employ `\etoctableofcontents`, not `\tableofcontents`.

1.09c \[2020/05/15\]
--------------------

Syncs with KOMA-script deprecation of `\iftocfeature`.
