%%
%% This is file `mynsfc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mynsfc.dtx  (with options: `class')
%% ----------------------------------------------------------------
%% mynsfc --- A XeLaTeX template for writing the main body of NSFC proposals.
%% Author:  Fei Qi
%% E-mail:  fred.qi@ieee.org
%% License: Released under the LaTeX Project Public License v1.3c or later
%% See:     http://www.latex-project.org/lppl.txt
%% ----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{mynsfc}
    [2020/08/18 v1.30 A XeLaTeX class for writing NSFC proposals.]
\ExecuteOptions{}
\ProcessOptions*
%% Options
\RequirePackage{kvoptions}
\DeclareBoolOption[false]{subfig}
\DeclareBoolOption[false]{boldtoc}
\DeclareStringOption[zhkai]{tocfont}
\DeclareStringOption[0070c0]{toccolor}
\ProcessKeyvalOptions*
%% Load default class
\LoadClass[a4paper,UTF8,fontset=fandol,zihao=-4]{ctexart}
\setCJKmainfont{FandolSong}[%
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold]
\setCJKfamilyfont{zhkai}{FandolKai-Regular.otf}[AutoFakeBold=2]
\RequirePackage[hmargin=1.25in,vmargin=1in]{geometry}
\setlength{\parskip}{0pt \@plus2pt \@minus0pt}
%% Load required packages
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage{amsmath,amssymb}
\RequirePackage{paralist}
\RequirePackage{graphicx}
\ifmynsfc@subfig
\RequirePackage[config]{subfig}
\else
\RequirePackage{caption,subcaption}
\fi
\RequirePackage{xcolor}
\RequirePackage{calc}
\RequirePackage{hyperref}
\hypersetup{%
  breaklinks=true,
  colorlinks=true,
  allcolors=black,
  pdfpagelabels}
\urlstyle{same}
%% Load and setup package biblatex
\RequirePackage[backend=biber,
                doi=false,
                url=false,
                isbn=false,
                defernumbers=true,
                style=ieee]{biblatex}

\setlength{\bibitemsep}{2pt}
\appto{\bibfont}{\normalfont\zihao{5}\linespread{1}\selectfont}
\defbibheading{reftype}[参考文献]{\subsection*{#1}}
\defbibheading{cvtype}[\bibname]{\subsubsection*{#1}}
\defbibfilter{conference}{type=inproceedings or type=incollection}

\NewBibliographyString{patentcn}

\DefineBibliographyStrings{english}{%
  and      = {\&},
  patentcn = {中国发明专利\adddot},
}

\RequirePackage{xpatch}% or use http://tex.stackexchange.com/a/40705

\@ifpackagelater{biblatex}{2016/05/10}
{
\renewcommand*{\mkbibnamegiven}[1]{%
  \ifitemannotation{self}{\textbf{#1}}{#1}}
\renewcommand*{\mkbibnamefamily}[1]{%
  \ifitemannotation{self}{\textbf{#1}}{#1}%
  \ifpartannotation{family}{corr}{\textsuperscript{*}}{}}
}
{
\@ifpackagelater{biblatex}{2016/03/01}
{
\newcommand*{\list@bold@authors}{}
\newcommand{\initauthors}[1]{
  \renewcommand*{\list@bold@authors}{}
  \forcsvlist{\listadd\list@bold@authors}{#1}}

\newboolean{bold}
\renewcommand*{\mkbibnamefamily}[1]{\ifthenelse{\boolean{bold}}{\textbf{#1}}{#1}}
\renewcommand*{\mkbibnamegiven}[1]{\ifthenelse{\boolean{bold}}{\textbf{#1}}{#1}}

\newbibmacro*{name:bold}{%
  \setboolean{bold}{false}%
  \def\do##1{\iffieldequalstr{hash}{##1}{\setboolean{bold}{true}\listbreak}{}}%
  \dolistloop{\list@bold@authors}%
}

\xpretobibmacro{name:family}{\begingroup\usebibmacro{name:bold}}{}{}{}{}
\xpretobibmacro{name:given-family}{\begingroup\usebibmacro{name:bold}}{}{}{}{}
\xpretobibmacro{name:family-given}{\begingroup\usebibmacro{name:bold}}{}

\xapptobibmacro{name:family}{\endgroup}{}{}{}{}
\xapptobibmacro{name:given-family}{\endgroup}{}{}{}{}
\xapptobibmacro{name:family-given}{\endgroup}{}{}{}{}
}
{
\newbibmacro*{name:bold}[2]{%
  \def\do##1{\ifstrequal{#1, #2}{##1}{\bfseries\listbreak}{}}%
  \dolistloop{\boldnames}}
\newcommand*{\boldnames}{}

\xpretobibmacro{name:last}{\begingroup\usebibmacro{name:bold}{#1}{#2}}{}{}
\xpretobibmacro{name:first-last}{\begingroup\usebibmacro{name:bold}{#1}{#2}}{}{}
\xpretobibmacro{name:last-first}{\begingroup\usebibmacro{name:bold}{#1}{#2}}{}{}
\xpretobibmacro{name:delim}{\begingroup\normalfont}{}{}

\xapptobibmacro{name:last}{\endgroup}{}{}
\xapptobibmacro{name:first-last}{\endgroup}{}{}
\xapptobibmacro{name:last-first}{\endgroup}{}{}
\xapptobibmacro{name:delim}{\endgroup}{}{}
}
}
\newcommand{\tocformat}{%
  \CJKfamily{\mynsfc@tocfont}%
  \color[HTML]{\mynsfc@toccolor}}
\def\ps@mynsfc@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}
\renewcommand{\maketitle}{%
  \begin{center}%
    \kaishu\zihao{3}\bfseries\@title%
  \end{center}}
\ctexset{
  part/name         = {（,）},
  part/aftername    = {},
  part/number       = \chinese{part},
  part/format       = \tocformat\bfseries\zihao{4},
  part/indent       = 2em,
}
\titleformat{\section}[block]{\tocformat\zihao{4}}
                             {\bfseries\hskip2em\thesection{.}}{1ex}{}
\titlespacing{\section}{0em}{4ex}{2ex}
\let\oldsection\section
\renewcommand{\section}[2]{\oldsection{\textbf{#1}{#2}}}
\@addtoreset{section}{part}
\titleformat{\subsection}{\tocformat\bfseries\zihao{-4}}
                         {\thesubsection{.}}{0.25em}{}
\titlespacing{\subsection}{0em}{2ex}{1ex}
\renewcommand{\thesubsubsection}{(\arabic{subsubsection})}
\titleformat{\subsubsection}{\CJKfamily{\mynsfc@tocfont}\bfseries\zihao{-4}}
                            {\thesubsubsection}{0.25em}{}
\titlespacing{\subsubsection}{0ex}{2ex}{1ex}
\captionsetup{font=small}
\newcommand{\cemph}[1]{\textbf{\color[HTML]{\mynsfc@toccolor}#1}}
\let\mynsfc@begindocumenthook\@begindocumenthook
\let\mynsfc@enddocumenthook\@enddocumenthook
\def\AtBeginDocument{\g@addto@macro\mynsfc@begindocumenthook}
\def\AtEndDocument{\g@addto@macro\mynsfc@enddocumenthook}
\def\@begindocumenthook{\mynsfc@begindocumenthook}
\def\@enddocumenthook{\mynsfc@enddocumenthook}
\AtBeginDocument{\ps@mynsfc@empty}
%% 
%% Copyright (C) 2015-2021 by Fei Qi <fred.qi@ieee.org>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License (LPPL), either
%% version 1.3c of this license or (at your option) any later
%% version.  The latest version of this license is in the file:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status) by
%% Fei Qi.
%% 
%% This work consists of the file mynsfc.dtx and a Makefile.
%% Running "make" generates the derived files README, mynsfc.pdf and mynsfc.cls.
%% Running "make inst" installs the files in the user's TeX tree.
%% Running "make install" installs the files in the local TeX tree.
%% 
%%
%% End of file `mynsfc.cls'.
