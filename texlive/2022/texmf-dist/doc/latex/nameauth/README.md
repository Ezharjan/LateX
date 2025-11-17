# Short Description

The `nameauth` package automates the correct formatting and indexing of names
for professional writing. This aids the use of a name authority and the
editing process without needing to retype name references.

# Files

|Filename      |Description                            |
|--------------|---------------------------------------|
|`nameauth.dtx`|commented style file; source file      |
|`Makefile`    |For use with GNU make; with source file|
|`nameauth.ins`|installation driver (generated file)   |
|`nameauth.sty`|style file          (generated file)   |
|`nameauth.pdf`|Documentation       (generated file)   |
|`README.md`   |This file           (generated file)   |
|`examples.tex`|example macros      (generated file)   |

# Obtaining the Package

1. Packaged in your current TeX distrbution: See the appropriate documentation.

2. Otherwise, download `nameauth.zip` from [CTAN](http://mirrors.ctan.org/macros/latex/contrib/nameauth.zip).

3. Unpack `nameauth.zip` in an appropriate directory.

4. Change to the  directory containing the `nameauth` files.

# File Generation

## Automatic Installation

This method requires GNU `make` on a POSIX-compliant environment, such as GNU/Linux, various BSD flavors, perhaps MacOS (e.g., with various porting systems), and even Cygwin on Windows.

  * We use the LaTeX installation on the host machine to build the package. When using `make`, any `dvi` files that are created will also be converted to `pdf` format.

1. Type `make` to generate the release files using `pdflatex`.

2. To use another LaTeX engine, type one of the following:

        make ENGINE=xelatex
        make ENGINE=lualatex
        make ENGINE=dvilualatex
        make ENGINE=latex

3. Type `make inst` to install the files in the user's personal TDS-compliant directory tree.

4. Type `sudo make install` to install the files in the system-wide, local TDS-compliant directory tree.

5. One can include multiple make targets on the command line, but that goes beyond the scope of this document and is intended for experienced users.

## Manual Compilation

Otherwise, the following steps are used for manual installation. See the general information at the [TeX FAQ](https://www.texfaq.org/FAQ-installthings).

1. To build the package on the host system, generate the installation files and a copy of the documentation without the table of contents and cross-references. We use `pdflatex` by default:

        pdflatex --shell-escape --recorder --interaction=batchmode nameauth.dtx

2. This will generate the following files:

        nameauth.ins   (complete)
        nameauth.sty   (complete)
        nameauth.pdf   (incomplete; do steps 3 through 5)
        README.md      (complete)
        examples.tex   (complete)

3. Generate the TOC and cross-references for the documentation:

        pdflatex --recorder --interaction=nonstopmode nameauth.dtx

4. Generate the index files using `makeindex`:

        makeindex -q -s gglo.ist -o nameauth.gls nameauth.glo
        makeindex -q -s gind.ist -o nameauth.ind nameauth.idx

5. Integrate the glossary (changes) and index into the documentation. The second run updates the TOC:

        pdflatex --recorder --interaction=nonstopmode nameauth.dtx
        pdflatex --recorder --interaction=nonstopmode nameauth.dtx

One can substitute, e.g., `xelatex`, `lualatex`, `dvilualatex`, and `latex`, for `pdflatex`, but the documentation may look different in some cases.

## Manual File Installation

Different TeX distributions have somewhat different ways to store TDS-compliant configuration and package data. See, for example, [MikTeX](https://miktex.org/kb/texmf-roots) and the [TeX FAQ](https://www.texfaq.org/FAQ-privinst). Two approaches below conform generally to a Unix-based system:

## User's Home Directory

`TEXMFHOME` is a variable that points to the root of a TDS-compliant directory tree available to a user. Use `kpsewhich --var-value TEXMFHOME` to obtain its value. Quite often it is equivalent to `$HOME/texmf`. The dollar sign in front of the variable denotes the value of the variable instead of its name. So if `$HOME` is `/home/bob`, then `$TEXMFHOME` would be `/home/bob/texmf`, and we can understand the following paths to be under that directory:

|Path                              |Description                             |
|----------------------------------|----------------------------------------|
|`$TEXMFHOME/source/latex/nameauth`|`ins` and `dtx` files, Makefile         |
|`$TEXMFHOME/tex/latex/nameauth`   |`sty` file                              |
|`$TEXMFHOME/doc/latex/nameauth`   |`pdf` file, `README.md`, `examples.tex` |

On older TeX distributions, run `mktexlsr` on $TEXMFHOME to complete the install process.

## System-Wide Directory

`TEXMFLOCAL` is a variable that points to the root of a TDS-compliant directory tree available to all users on a local site, system-wide installation. Use `kpsewhich --var-value TEXMFLOCAL` to obtain its value. See the [TeX FAQ](https://www.texfaq.org/FAQ-what-TDS). We can understand the following paths to be under that directory:

|Path                               |Description                             |
|-----------------------------------|----------------------------------------|
|`$TEXMFLOCAL/source/latex/nameauth`|`ins` and `dtx` files, Makefile         |
|`$TEXMFLOCAL/tex/latex/nameauth`   |`sty` file                              |
|`$TEXMFLOCAL/doc/latex/nameauth`   |`pdf` file, `README.md`, `examples.tex` |

Run `mktexlsr` with the appropriate permissions on `$TEXMFLOCAL` to complete the install process.

# Testing

## Compiling `examples.tex`

1. Either go to the directory used when unpacking the `zip` file or copy the file `examples.tex` from the `doc/latex/nameauth` branch of whatever TDS-compliant tree to a directory of your choice.

2. If one has access to GNU `make`, use either `Makefile` in the directory where one unpacked the `zip` file or copy `Makefile` from either `src/latex/nameauth` or `doc/latex/nameauth` in whatever TDS-compliant tree it exists.

When using `make`, any `dvi` files that are created will also be converted to `pdf` format.

3. To compile the test file using `make` and `pdflatex`, simply type `make testing`.

4. For multi-format testing using `make` in addition to that above, one can do the following:

        make testing ENGINE=pdflatex
        make testing ENGINE=latex
        make testing ENGINE=lualatex
        make testing ENGINE=dvilualatex
        make testing ENGINE=xelatex

5. If one does not have `make`, one can use the following commands, substituting, e.g., `latex`, `xelatex`, `lualatex`, and `dvilualatex` for `pdflatex`:

        pdflatex --interaction=nonstopmode examples
        pdflatex --interaction=nonstopmode examples
        makeindex -o examples.ind examples.idx
        makeindex -o examples.rnd examples.rdx
        pdflatex --interaction=nonstopmode examples
        pdflatex --interaction=nonstopmode examples

The use of different extensions for the index results from using the `index` package to generate a persons index separate from a subject index.

The manual is also a test suite.

# Copyright

Copyright (C) 2021 by Charles P. Schaum <charles[dot]schaum@comcast.net>
-------------------------------------------------------

This file may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in:

   [http://www.latex-project.org/lppl.txt](https://www.latex-project.org/lppl.txt)

and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

