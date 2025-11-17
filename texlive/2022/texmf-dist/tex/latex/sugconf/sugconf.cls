%% This is file 'sugconf.cls' for SAS(R) User Group conference papers
%% Copyright (C) 2006, 2021 Ronald J. Fehd
%%
%%  This program is provided under the terms of the
%%  LaTeX Project Public License distributed from CTAN
%%  archives in directory macros/latex/base/lppl.txt.
%%
%%  Author: Ronald J. Fehd
%%          Ron dot Fehd dot macro dot maven at gmail dot com
%%
%%  This work has the LPPL maintenance status "author-maintained".
%%
%% usage: see sugconf-template.tex
%% \documentclass{sugconf}
%% %\documentclass[nopagenumbers]{sugconf}
%% \sugconfbanner{banner-sgf-2021.png}%
%% \sugconfpapernumber{Paper 999-99}%
%% %\sugconfpapernumber{\relax}%note: no paper number: warning in log
%% \title{this is the title of the paper}
%% \author{R.J. Fehd and N. Derby}
%
\ProvidesClass{sugconf}[2021/04/02 v2021 (RJF)]
\NeedsTeXFormat{LaTeX2e}
\pagestyle{plain}%see boolean PageNumbers
%
\usepackage[T1]{fontenc}%TEX extended text
\usepackage[ansinew]{inputenc}%2021-03-16
\usepackage{graphicx}%2021-03-20 for banner
\usepackage{ifthen}%for newboolean PageNumbers
%
\newboolean{PageNumbers}%%K&D pg 203
\setboolean{PageNumbers}{true}
\let\SUGconfSubject\relax%
\newcommand{\sugconfsubject}[1]{\def\SUGconfSubject{#1}}
\let\SUGconfKeywords\relax%
\newcommand{\sugconfkeywords}[1]{\def\SUGconfKeywords{#1}}
\let\@papernumber\relax%
\newcommand{\sugconfpapernumber}[1]{\def\@papernumber{#1}}
\let\@banner\relax%
\newcommand{\sugconfbanner}[1]{\def\@banner{#1}}
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{nopagenumbers}{\setboolean{PageNumbers}{false}%
                              \pagestyle{empty}}%
\ProcessOptions
\LoadClass[10pt]{article}
\AtEndOfPackage{%
   \RequirePackage[hyphens]{url}
   \RequirePackage[bookmarks   =false%SUG style guide
                  ,pdfcreator  ={pdfLaTeX sugconf.cls}%
                  ,pdfstartview=FitBH%fit width of page to the window
                  ]{hyperref}
   }%end AtEndOfPackage
\AtBeginDocument{%
   \ifthenelse{\boolean{PageNumbers}}%%K&D pg 335
              {\relax}%
              {\thispagestyle{empty}}%no page numbers
   \if\@papernumber\relax%
       \@latex@warning{sugconf:
               You need to specify a paper identifier
               using the 'papernumber' macro in the preamble.}
       \fi%
   }%end AtBeginDocument
%
%% https://ctan.org/pkg/fntguide
\renewcommand{\rmdefault}{phv}%Adobe Helvetica san-serif similar to Win Arial
\renewcommand{\sfdefault}{phv}%Adobe Helvetica san-serif
\renewcommand{\ttdefault}{pcr}%Adobe Courier   monospace
%
%% acmconf.cls: places floats where they should go; per R Pursifull
\renewcommand{\bottomfraction}{1} \setcounter{topnumber}   {10}
\renewcommand{\textfraction}  {0} \setcounter{bottomnumber}{10}
%
\renewcommand{\refname}{\flushleft\normalsize\bfseries REFERENCES}
\renewcommand{\contentsname}
             {table of contents: for review only, disable for final}
%
\newcommand{\SASregistered}%
           {SAS\textsuperscript{\scriptsize\textregistered}\ }
\newcommand{\SASisRegisteredTrademark}%
           {SAS and all other SAS Institute Inc. product or service %
            names are registered trademarks or trademarks of %
            SAS Institute Inc. in the USA and other countries. %®
            \textregistered\/ indicates USA registration.}
\newcommand{\OtherTrademarks}%
           {Other brand and product names are trademarks
            of their respective companies.}%
\providecommand{\tightlist}{% begin{description|enumerate|itemize}\tightlist
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
%https://tex.stackexchange.com/questions/257418/error-tightlist-converting-md-file-into-pdf-using-pandoc
%
\setcounter{secnumdepth}{-1}%turn off numbering of headings
%
\setlength{\hoffset}       {-0.375in} \setlength{\voffset}   {-0.25in}
\setlength{\textwidth}     {7.0in}    \setlength{\textheight} {9.25in}
\setlength{\headheight}    {0pt}      \setlength{\headsep}    {0pt}
\setlength{\topskip   }    {0pt}      \setlength{\topmargin}  {0pt}
\setlength{\evensidemargin}{0pt}      \setlength{\oddsidemargin}{0pt}
\setlength{\columnsep}     {0.5in}%space between two columns
\setlength{\columnseprule} {0pt}  %width vertical rule between columns
\setlength{\parindent}     {0pt}  %paragraph indent
\setlength{\parskip}       {1.0ex plus 0.125ex minus 0.125ex}
%
\def\@maketitle{%
  \begin{center}%
    \if\@banner\relax\else%
      \includegraphics[width=\textwidth]{\@banner} \\
      \vspace{-0.6\baselineskip}
      \fi%
    \if\@papernumber\relax\else%
       \textbf{\@papernumber}\\ \bigskip
       \fi%
    \textbf{\Large\@title }  \\ \medskip
    \textbf{\large\@author}
  \end{center}%
  }%end maketitle
%
%% LaTeX 2e reference manual
\renewcommand{\section}{\@startsection
              {section}%                 %name
              {1}%                       %level
              {0pt}%                     %indent
              {\baselineskip}%           %beforeskip
              {0.125\baselineskip}%      %afterskip
              {\large\bfseries\uppercase}%style
             }%end section definition
\renewcommand{\subsection}{\@startsection
              {subsection}{2}{0pt}{0.5\baselineskip}{1sp}%
              {\normalsize\bfseries\uppercase}%
             }%end subsection definition
\endinput %% sugconf.cls 2021-04-02 5:32:03 PM
