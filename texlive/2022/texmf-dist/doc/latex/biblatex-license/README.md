# biblatex-license

----
Author:
Anselm Wagner
a.wagner1@uni-wuppertal.de
Bergische Universität Wuppertal
v0.1

License:
This material is subject to the LaTeX Project Public License 1.3c.
https://ctan.org/license/lppl1.3

Requirements:
This package requires the LaTeX-packages 'biblatex' and 'kvoptions' to be installed.
----

## Intro

This package provides a modification to the biblatex standard styles for
relating cited works to the license under which they were published.
This is done via biblatex’ build in `related` mechanism and
`relatedtype = license`. This package basically provides this new
relatedtype, the bibmacros for typesetting these related entries and
some additional styling options.

## Loading the package

The package is loaded via

    \usepackage[options]{biblatex-license}

and has to be loaded *after* the `biblatex` package. The package sets
the `biblatex` option `related = true`.

## Options

* `license`  : Decides if and how the license is to be printed. Default: short
* `url`      : Switch for deciding if the url of the license should be explicitly printed. Default: false
* `link`     : When set to `true` and `url` is set to `off`, the title of the license becomes an `\href`, i.e. a hyperlink. Default: true
* `introtext`: Makes it possible to replace the language specific intro text (e.g. “licensed under”) with custom text. Default: none

## Usage

Consider the following bibliography:

    @Misc{CreativeCommons4.0,
      author     = {{Creative Commons}},
      title      = {{Attribution-NonCommercial-ShareAlike 4.0 International}},
      date       = {2013-11-25},
      url        = {https://creativecommons.org/licenses/by-nc-sa/4.0/},
      urldate    = {2019-10-01},
      shorttitle = {{CC BY-NC-SA 4.0}},
    }

    @book{Payne2019,
      author = {Blakeley Hoffman Payne},
      editor = {{MIT Media Lab Personal Robots Group} and Cynthia Breazeal},
      title = {An Ethics of Artificial Intelligence Curriculum for Middle
                School Students},
      related = {CreativeCommons4.0},
      relatedtype = {license},
      url = {https://t1p.de/rwlp},
      urldate = {2020-01-27},
      date = {2019-08},
    }

Note, that `Payne2019` has the fields `related` and `relatedtype`
defined. `related` is pointing via the label to the entry corresponding
to the license under which `Payne2019` was published:
`CreativeCommons4.0`. The `relatedtype = {license}` is necessary for
`biblatex` to know how this relation should be handled. Please see the
`biblatex` user guide (§3.4 *Related Entries*) for more information on
related entries.

## More on the options

### `introtext`

Note the text “Licensed under” in the bibliography. This text is, as of
now, only translated to german but can be changed via the option
`introtext` like so:

    \usepackage[introtext={Some text}]{biblatex-license}

### `link`

Also note that in the example output above the title of the license is
itself a link to where the `url`-field of the license entry inside the
bib-file is pointing. This link is made via `\href`.

### `url`

It might be better to explicitly print the url of the license, which can
be done via the `url=true` option. If printed this way, the option
`link` has no effect on if this url is itself a hyperlink or not aus the
url-field is handled by biblatex itself.

### `shorttitle` of the license

If a `shorttitle` is provided for the license inside the bib-file, the
shorttitle will always be preferred.
