%%
%% This is file `suftesi.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% suftesi.dtx  (with options: `class')
%% 
%% The 'suftesi' document class
%% Copyright (C) 2009-2021 Ivan Valbusa
%% <ivan dot valbusa at gmail dot com>
%% 
%% All rights reserved.
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work consists of all files listed in README
%% 
%% This work has the LPPL maintenance status "author-maintained".
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{suftesi}
    [2021/11/01 v3.2.0 A class for typesetting theses, books and articles]
\RequirePackage{xkeyval}
\newif\ifsuftesi@article
\newif\ifsuftesi@collection
\newif\ifsuftesi@lmodern
\newif\ifsuftesi@cochineal
\newif\ifsuftesi@libertine
\newif\ifsuftesi@palatino
\newif\ifsuftesi@mathpazo
\newif\ifsuftesi@nofont
\newif\ifsuftesi@greekfont
\newif\ifsuftesi@porson
\newif\ifsuftesi@artemisia
\newif\ifsuftesi@bodoni
\newif\ifsuftesi@cbgreek
\newif\ifsuftesi@mathminimal
\newif\ifsuftesi@mathextended
\newif\ifsuftesi@periodical
\newif\ifsuftesi@periodicalaureo
\newif\ifsuftesi@compact
\newif\ifsuftesi@compactaureo
\newif\ifsuftesi@supercompact
\newif\ifsuftesi@supercompactaureo
\newif\ifsuftesi@pocketa
\newif\ifsuftesi@pocketb
\newif\ifsuftesi@pocketc
\newif\ifsuftesi@screen
\newif\ifsuftesi@sufplain
\newif\ifsuftesi@screencentered
\newif\ifsuftesi@centerheader
\newif\ifsuftesi@authortitle
\newif\ifsuftesi@numparpart
\newif\ifsuftesi@numparchap
\newif\ifsuftesi@numparsec
\newif\ifsuftesi@numparsubsec
\newif\ifsuftesi@numparsubsubsec
\newif\ifsuftesi@dottedtoc
\newif\ifsuftesi@raggedtoc
\newif\ifsuftesi@pagelefttoc
\newif\ifsuftesi@twocolumntoc
\newif\ifsuftesi@twocolumnlof
\newif\ifsuftesi@twocolumnlot
\newif\ifsuftesi@ctocsec
\newif\ifsuftesi@ctocsubsec
\newif\ifsuftesi@ctocsubsubsec
\newif\ifsuftesi@ctocpar
\newif\ifsuftesi@ctocsubpar
\newif\ifsuftesi@FSPL
\DeclareOption{a4paper}{%
  \ClassWarningNoLine{suftesi}{Option 'a4paper' not available}{}}
\DeclareOption{a5paper}{%
  \ClassWarningNoLine{suftesi}{Option 'a5paper' not available}{}}
\DeclareOption{b5paper}{%
  \ClassWarningNoLine{suftesi}{Option 'b5paper' not available}{}}
\DeclareOption{legalpaper}{%
  \ClassWarningNoLine{suftesi}{Option 'legalpaper' not available}{}}
\DeclareOption{executivepaper}{%
  \ClassWarningNoLine{suftesi}{Option 'executivepaper' not available}{}}
\DeclareOption{landscape}{%
  \ClassWarningNoLine{suftesi}{Option 'landscape' not available}{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\relax
\LoadClass{book}
\RequirePackage{fontsize}
\DeclareOptionX{parindent}{\setlength{\parindent}{#1}}
\ExecuteOptionsX{parindent=\baselineskip}
\ProcessOptionsX*\relax
\define@choicekey{}{structure}[\suftesi@val\suftesi@nr]
    {book,article,collection}[book]{%
\ifcase\suftesi@nr\relax
  \SUF@titlepagetrue
  \def\SUF@chapswitch{\thechapter.}
\or
  \suftesi@articletrue
  \SUF@titlepagefalse
  \def\SUF@chapswitch{}
\or
  \suftesi@collectiontrue
  \setkeys{}{headerstyle=authortitleinner}
  \def\SUF@chapswitch{}
\fi}
\define@choicekey{}{version}[\suftesi@val\suftesi@nr]
    {screen,cscreen,draft,final}[draft]{%
\ifcase\suftesi@nr\relax
  \suftesi@screentrue
\or
  \suftesi@screentrue
  \suftesi@screencenteredtrue
\or
  \relax
\or
  \AtBeginDocument{\crop[off]}
\fi}
\define@boolkey{}[SUF@]{marginpar}[true]{}
\define@boolkey{}[SUF@]{partpage}[true]{}
\define@boolkey{}[SUF@]{draftdate}[true]{}
\define@boolkey{}[SUF@]{titlepage}[true]{}
\define@choicekey{}{defaultfont}[\suftesi@val\suftesi@nr]
    {none,cochineal,libertine,palatino,standard,compatibility}[cochineal]{%
\ifcase\suftesi@nr\relax
  \suftesi@nofonttrue
\or
  \suftesi@cochinealtrue
\or
  \suftesi@libertinetrue
\or
  \suftesi@palatinotrue
\or
  \suftesi@lmoderntrue
\or
  \suftesi@mathpazotrue
\fi}
\define@choicekey{}{mathfont}[\suftesi@val\suftesi@nr]
    {none,minimal,extended}[minimal]{%
\ifcase\suftesi@nr\relax
  \suftesi@mathminimalfalse
  \suftesi@mathextendedfalse
\or
  \suftesi@mathminimaltrue
\or
  \suftesi@mathextendedtrue
\fi}
\define@choicekey{}{greekfont}[\suftesi@val\suftesi@nr]
    {none,artemisia,porson,bodoni,cbgreek}[none]{%
\ifcase\suftesi@nr\relax
  \suftesi@greekfontfalse
\or
  \suftesi@greekfonttrue\suftesi@artemisiatrue
\or
  \suftesi@greekfonttrue\suftesi@porsontrue
\or
  \suftesi@greekfonttrue\suftesi@bodonitrue
\or
  \suftesi@greekfonttrue\suftesi@cbgreektrue
\fi}
\define@choicekey{}{smallcapsstyle}[\suftesi@val\suftesi@nr]
    {low,upper}[low]{%
\ifcase\suftesi@nr\relax
  \def\SUF@MakeLowercase{\MakeLowercase}
  \def\SUF@TOCMakeLowercase{\lowercase}
\or
  \def\SUF@MakeLowercase{\relax}
  \def\SUF@TOCMakeLowercase{\relax}
\fi}
\RequirePackage{geometry}
\define@choicekey{}{pagelayout}[\suftesi@val\suftesi@nr]
    {standard,standardaureo,periodical,periodicalaureo,compact,compactaureo,
    supercompact,supercompactaureo,pocketa,pocketb,pocketc}[standard]{%
\ifcase\suftesi@nr\relax
  \DeclareRobustCommand{\SUF@partsize}{\Large}
  \DeclareRobustCommand{\SUF@chaptersize}{\Large}
  \DeclareRobustCommand{\SUF@sectionsize}{\large}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    a4paper,
    includeheadfoot=true,
    textwidth=      110mm,
    textheight=     220mm,
    marginratio=    2:3,
    marginparwidth= 30mm,
    marginparsep=   12pt}
\or
  \DeclareRobustCommand{\SUF@partsize}{\Large}
  \DeclareRobustCommand{\SUF@chaptersize}{\Large}
  \DeclareRobustCommand{\SUF@sectionsize}{\large}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    a4paper,
    includeheadfoot=true,
    textwidth=      136mm,
    textheight=     220mm,
    marginratio=    2:3,
    marginparwidth= 30mm,
    marginparsep=   12pt}
\or
\suftesi@periodicaltrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     165mm,
    textwidth=      110mm,
    paperwidth=     170mm,
    paperheight=    240mm,
    marginratio=    2:3,
    marginparwidth= 26mm,
    marginparsep=   10pt}
\or
\suftesi@periodicalaureotrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=true,
    textwidth=      120mm,
    textheight=     194mm,
    paperwidth=     17cm,
    paperheight=    24cm,
    marginratio=    2:3,
    marginparwidth= 62pt,
    marginparsep=   10pt}
\or
\suftesi@compacttrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     165mm,
    textwidth=      110mm,
    paperwidth=     160mm,
    paperheight=    240mm,
    marginratio=    2:3,
    marginparwidth= 22mm,
    marginparsep=   9pt}
\or
\suftesi@compactaureotrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     191mm,
    textwidth=      118mm,
    paperwidth=     160mm,
    paperheight=    240mm,
    marginratio=    2:3,
    marginparwidth= 19mm,
    marginparsep=   9pt}
\or
\suftesi@supercompacttrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     150mm,
    textwidth=      100mm,
    paperwidth=     140mm,
    paperheight=    210mm,
    marginratio=    2:3,
    marginparwidth= 18mm,
    marginparsep=   8pt}
\or
\suftesi@supercompactaureotrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     175mm,
    textwidth=      108mm,
    paperwidth=     140mm,
    paperheight=    210mm,
    marginratio=    1:1,
    marginparwidth= 11mm,
    marginparsep=   7pt}
\or
\suftesi@pocketatrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     153mm,
    textwidth=      102mm,
    paperwidth=     135mm,
    paperheight=    208mm,
    hmarginratio=    1:1,
    vmarginratio=    2:3,
    marginparwidth= 12mm,
    marginparsep=   7pt}
\or
\suftesi@pocketbtrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
  \geometry{
    heightrounded,
    includeheadfoot=false,
    textheight=     165mm,
    textwidth=      99mm,
    paperwidth=     140mm,
    paperheight=    210mm,
    hmarginratio=    1:1,
    vmarginratio=    2:3,
    marginparwidth= 15mm,
    marginparsep=   7pt}
\or
\suftesi@pocketctrue
  \DeclareRobustCommand{\SUF@partsize}{\large}
  \DeclareRobustCommand{\SUF@chaptersize}{\large}
  \DeclareRobustCommand{\SUF@sectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsectionsize}{\normalsize}
  \DeclareRobustCommand{\SUF@subsubsectionsize}{\normalsize}
    \geometry{
     heightrounded,
     includeheadfoot=false,
     textheight=     150mm,
     textwidth=      90mm,
     paperwidth=     116mm,
     paperheight=    193mm,
     hmarginratio=    1:1,
     vmarginratio=    2:3,
     marginparwidth= 8mm,
     marginparsep=   7pt}
\fi}
\define@choicekey{}{partstyle}[\suftesi@val\suftesi@nr]
    {left,center,right,parleft,parcenter,parright}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@PART@align{\filright}
\or
  \def\SUF@PART@align{\filcenter}
\or
  \def\SUF@PART@align{\filleft}
\or
  \def\SUF@PART@align{\filright}
  \suftesi@numparparttrue
\or
  \def\SUF@PART@align{\filcenter}
  \suftesi@numparparttrue
\or
  \def\SUF@PART@align{\filleft}
  \suftesi@numparparttrue
\fi}
\define@choicekey{}{chapstyle}[\suftesi@val\suftesi@nr]
    {left,center,right,parleft,parcenter,parright}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@CHAP@align{\filright}
\or
  \def\SUF@CHAP@align{\filcenter}
\or
  \def\SUF@CHAP@align{\filleft}
\or
  \def\SUF@CHAP@align{\filright}
  \suftesi@numparchaptrue
\or
  \def\SUF@CHAP@align{\filcenter}
  \suftesi@numparchaptrue
\or
  \def\SUF@CHAP@align{\filleft}
  \suftesi@numparchaptrue
\fi}
\define@choicekey{}{secstyle}[\suftesi@val\suftesi@nr]
    {left,center,right,parleft,parcenter,parright}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SEC@align{\filright}
\or
  \def\SUF@SEC@align{\filcenter}
\or
  \def\SUF@SEC@align{\filleft}
\or
  \def\SUF@SEC@align{\filright}
  \suftesi@numparsectrue
\or
  \def\SUF@SEC@align{\filcenter}
  \suftesi@numparsectrue
\or
  \def\SUF@SEC@align{\filleft}
  \suftesi@numparsectrue
\fi}
\define@choicekey{}{subsecstyle}[\suftesi@val\suftesi@nr]
    {left,center,right,parleft,parcenter,parright}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SUBSEC@align{\filright}
\or
  \def\SUF@SUBSEC@align{\filcenter}
\or
  \def\SUF@SUBSEC@align{\filleft}
\or
  \def\SUF@SUBSEC@align{\filright}
\suftesi@numparsubsectrue
\or
  \def\SUF@SUBSEC@align{\filcenter}
\suftesi@numparsubsectrue
\or
  \def\SUF@SUBSEC@align{\filleft}
\suftesi@numparsubsectrue
\fi}
\define@choicekey{}{subsubsecstyle}[\suftesi@val\suftesi@nr]
    {left,center,right,parleft,parcenter,parright}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SUBSUBSEC@align{\filright}
\or
  \def\SUF@SUBSUBSEC@align{\filcenter}
\or
  \def\SUF@SUBSUBSEC@align{\filleft}
\or
  \def\SUF@SUBSUBSEC@align{\filright}
\suftesi@numparsubsubsectrue
\or
  \def\SUF@SUBSUBSEC@align{\filcenter}
\suftesi@numparsubsubsectrue
\or
  \def\SUF@SUBSUBSEC@align{\filleft}
\suftesi@numparsubsubsectrue
\fi}
\define@choicekey{}{partfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@PART@font{\relax}
\or
  \def\SUF@PART@font{\itshape}
\or
  \def\SUF@PART@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{chapfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@CHAP@font{\relax}
\or
  \def\SUF@CHAP@font{\itshape}
\or
  \def\SUF@CHAP@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{secfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[italic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SEC@font{\relax}
\or
  \def\SUF@SEC@font{\itshape}
\or
  \def\SUF@SEC@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{subsecfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SUBSEC@font{\relax}
\or
  \def\SUF@SUBSEC@font{\itshape}
\or
  \def\SUF@SUBSEC@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{subsubsecfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SUBSUBSEC@font{\relax}
\or
  \def\SUF@SUBSUBSEC@font{\itshape}
\or
  \def\SUF@SUBSUBSEC@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{parfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@PAR@font{\relax}
\or
  \def\SUF@PAR@font{\itshape}
\or
  \def\SUF@PAR@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{subparfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@SUBPAR@font{\relax}
\or
  \def\SUF@SUBPAR@font{\itshape}
\or
  \def\SUF@SUBPAR@font{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{partnumstyle}[\suftesi@val\suftesi@nr]
    {arabic,roman,Roman,dotarabic,dotroman,dotRoman}[arabic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@thepart{\arabic{part}}
  \def\SUF@dotpart{}
\or
  \def\SUF@thepart{\textsc{\roman{part}}}
  \def\SUF@dotpart{}
\or
  \def\SUF@thepart{\Roman{part}}
  \def\SUF@dotpart{}
\or
  \def\SUF@thepart{\arabic{part}}
  \def\SUF@dotpart{.}
\or
  \def\SUF@thepart{\textsc{\roman{part}}}
  \def\SUF@dotpart{.}
\or
  \def\SUF@thepart{\Roman{part}}
  \def\SUF@dotpart{.}
\fi}
\define@choicekey{}{chapnumstyle}[\suftesi@val\suftesi@nr]
    {arabic,roman,Roman,dotarabic,dotroman,dotRoman}[arabic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@thechapter{\arabic{chapter}}
  \def\SUF@HEAD@thechapter{\arabic{chapter}}
  \def\SUF@dotchap{}
  \def\SUF@CHAP@contentslabel{\thecontentslabel}
\or
  \def\SUF@thechapter{\textsc{\roman{chapter}}}
  \def\SUF@HEAD@thechapter{\textsc{\roman{chapter}}}
  \def\SUF@dotchap{}
  \def\SUF@CHAP@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thechapter{\Roman{chapter}}
  \def\SUF@HEAD@thechapter{\Roman{chapter}}
  \def\SUF@dotchap{}
  \def\SUF@CHAP@contentslabel{\@Roman{\thecontentslabel}}
\or
  \def\SUF@thechapter{\arabic{chapter}}
  \def\SUF@HEAD@thechapter{\arabic{chapter}}
  \def\SUF@dotchap{.}
  \def\SUF@CHAP@contentslabel{\thecontentslabel}
\or
  \def\SUF@thechapter{\textsc{\roman{chapter}}}
  \def\SUF@HEAD@thechapter{\textsc{\roman{chapter}}}
  \def\SUF@dotchap{.}
  \def\SUF@CHAP@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thechapter{\Roman{chapter}}
  \def\SUF@HEAD@thechapter{\Roman{chapter}}
  \def\SUF@dotchap{.}
  \def\SUF@CHAP@contentslabel{\@Roman{\thecontentslabel}}
\fi}
\define@choicekey{}{secnumstyle}[\suftesi@val\suftesi@nr]
    {arabic,roman,Roman,dotarabic,dotroman,dotRoman}[arabic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@thesection{\SUF@chapswitch\arabic{section}}
  \def\SUF@HEAD@thesection{\arabic{section}}
  \def\SUF@dotsec{}
  \def\SUF@SEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesection{\textsc{\SUF@chapswitch\roman{section}}}
  \def\SUF@HEAD@thesection{\textsc{\roman{section}}}
  \def\SUF@dotsec{}
  \def\SUF@SEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesection{\SUF@chapswitch\Roman{section}}
  \def\SUF@HEAD@thesection{\Roman{section}}
  \def\SUF@dotsec{}
  \def\SUF@SEC@contentslabel{\@Roman{\thecontentslabel}}
\or
  \def\SUF@thesection{\SUF@chapswitch\arabic{section}}
  \def\SUF@HEAD@thesection{\arabic{section}}
  \def\SUF@dotsec{.}
  \def\SUF@SEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesection{\SUF@chapswitch\textsc{\roman{section}}}
  \def\SUF@HEAD@thesection{\textsc{\roman{section}}}
  \def\SUF@dotsec{.}
  \def\SUF@SEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesection{\SUF@chapswitch\Roman{section}}
  \def\SUF@HEAD@thesection{\Roman{section}}
  \def\SUF@dotsec{.}
  \def\SUF@SEC@contentslabel{\@Roman{\thecontentslabel}}
\fi}
\define@choicekey{}{subsecnumstyle}[\suftesi@val\suftesi@nr]
    {arabic,roman,Roman,dotarabic,dotroman,dotRoman}[arabic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@thesubsection{\SUF@thesection.\arabic{subsection}}
  \def\SUF@dotsubsec{}
  \def\SUF@SUBSEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesubsection{\SUF@thesection.\textsc{\roman{subsection}}}
  \def\SUF@dotsubsec{}
  \def\SUF@SUBSEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesubsection{\SUF@thesection.\Roman{subsection}}
  \def\SUF@dotsubsec{}
  \def\SUF@SUBSEC@contentslabel{\@Roman{\thecontentslabel}}
\or
  \def\SUF@thesubsection{\SUF@thesection.\arabic{subsection}}
  \def\SUF@dotsubsec{.}
  \def\SUF@SUBSEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesubsection{\SUF@thesection.\textsc{\roman{subsection}}}
  \def\SUF@dotsubsec{.}
  \def\SUF@SUBSEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesubsection{\SUF@thesection.\Roman{subsection}}
  \def\SUF@dotsubsec{.}
  \def\SUF@SUBSEC@contentslabel{\@Roman{\thecontentslabel}}
\fi}
\define@choicekey{}{subsubsecnumstyle}[\suftesi@val\suftesi@nr]
    {arabic,roman,Roman,dotarabic,dotroman,dotRoman}[arabic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@thesubsubsection{\SUF@thesubsection.\arabic{subsubsection}}
  \def\SUF@dotsubsubsec{}
  \def\SUF@SUBSUBSEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesubsubsection{\SUF@thesubsection.\textsc{\roman{subsubsection}}}
  \def\SUF@dotsubsubsec{}
  \def\SUF@SUBSUBSEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesubsubsection{\SUF@thesubsection.\Roman{subsubsection}}
  \def\SUF@dotsubsubsec{}
  \def\SUF@SUBSUBSEC@contentslabel{\@Roman{\thecontentslabel}}
\or
  \def\SUF@thesubsubsection{\SUF@thesubsection.\arabic{subsubsection}}
  \def\SUF@dotsubsubsec{.}
  \def\SUF@SUBSUBSEC@contentslabel{\thecontentslabel}
\or
  \def\SUF@thesubsubsection{\SUF@thesubsection.\textsc{\roman{subsubsection}}}
  \def\SUF@dotsubsubsec{.}
  \def\SUF@SUBSUBSEC@contentslabel{\textsc{\@roman{\thecontentslabel}}}
\or
  \def\SUF@thesubsubsection{\SUF@thesubsection.\Roman{subsubsection}}
  \def\SUF@dotsubsubsec{.}
  \def\SUF@SUBSUBSEC@contentslabel{\@Roman{\thecontentslabel}}
\fi}
\define@choicekey{}{tocstyle}[\suftesi@val\suftesi@nr]
    {standard,dotted,ragged,leftpage}[standard]{%
\ifcase\suftesi@nr\relax
  \def\SUF@titlerule{\titlerule*{}}
  \def\SUF@chaptitlerule{\titlerule*{}}
\or
\suftesi@dottedtoctrue
  \def\SUF@titlerule{\titlerule*{\footnotesize .\ }}
  \def\SUF@chaptitlerule{\titlerule*{}}
\or
\suftesi@raggedtoctrue
  \def\SUF@titlerule{\hspace{1em}}
  \def\SUF@chaptitlerule{\hspace{1em}}
\or
\suftesi@pagelefttoctrue
\fi}
\define@choicekey{}{compacttoc}[\suftesi@val\suftesi@nr]
    {sec,subsec,subsubsec,par,subpar}[sec]{%
\ifcase\suftesi@nr\relax
  \suftesi@ctocsectrue
  \suftesi@ctocsubsectrue
  \suftesi@ctocsubsubsectrue
  \suftesi@ctocpartrue
  \suftesi@ctocsubpartrue
  \def\SUF@sscorrect{\hskip.5em}
  \def\SUF@ssscorrect{\hskip.5em}
  \def\SUF@pcorrect{\hskip.5em}
  \def\SUF@pcorrect{\hskip.5em}
\or
  \suftesi@ctocsubsectrue
  \suftesi@ctocsubsubsectrue
  \suftesi@ctocpartrue
  \suftesi@ctocsubpartrue
  \def\SUF@sscorrect{\relax}
  \def\SUF@ssscorrect{\hskip.5em}
  \def\SUF@pcorrect{\hskip.5em}
  \def\SUF@pcorrect{\hskip.5em}
\or
  \suftesi@ctocsubsubsectrue
  \suftesi@ctocpartrue
  \suftesi@ctocsubpartrue
  \def\SUF@sscorrect{\relax}
  \def\SUF@ssscorrect{\relax}
  \def\SUF@pcorrect{\hskip.5em}
  \def\SUF@pcorrect{\hskip.5em}
\or
  \suftesi@ctocpartrue
  \suftesi@ctocsubpartrue
  \def\SUF@sscorrect{\relax}
  \def\SUF@ssscorrect{\relax}
  \def\SUF@pcorrect{\relax}
  \def\SUF@pcorrect{\hskip.5em}
\or
  \suftesi@ctocsubpartrue
  \def\SUF@sscorrect{\relax}
  \def\SUF@ssscorrect{\relax}
  \def\SUF@pcorrect{\relax}
  \def\SUF@pcorrect{\relax}
\fi}
\define@choicekey{}{twocolcontents}[\suftesi@val\suftesi@nr]
    {toc,lof,lot,toclof,toclot,loflot,all}[all]{%
\ifcase\suftesi@nr\relax
  \suftesi@twocolumntoctrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumnloftrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumnlottrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumntoctrue
  \suftesi@twocolumnloftrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumntoctrue
  \suftesi@twocolumnlottrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumnloftrue
  \suftesi@twocolumnlottrue
  \setkeys{}{tocstyle=ragged}
\or
  \suftesi@twocolumntoctrue
  \suftesi@twocolumnloftrue
  \suftesi@twocolumnlottrue
  \setkeys{}{tocstyle=ragged}
\fi}
\define@boolkey{}[SUF@]{partialtoc}[true]{}
\define@choicekey{}{tocpartfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocPART@font{\relax}
\or
  \def\SUF@tocPART@font{\itshape}
\or
  \def\SUF@tocPART@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocchapfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocCHAP@font{\relax}
\or
  \def\SUF@tocCHAP@font{\itshape}
\or
  \def\SUF@tocCHAP@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocsecfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[italic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocSEC@font{\relax}
\or
  \def\SUF@tocSEC@font{\itshape}
\or
  \def\SUF@tocSEC@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocsubsecfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocSUBSEC@font{\relax}
\or
  \def\SUF@tocSUBSEC@font{\itshape}
\or
  \def\SUF@tocSUBSEC@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocsubsubsecfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocSUBSUBSEC@font{\relax}
\or
  \def\SUF@tocSUBSUBSEC@font{\itshape}
\or
  \def\SUF@tocSUBSUBSEC@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocparfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocPAR@font{\relax}
\or
  \def\SUF@tocPAR@font{\itshape}
\or
  \def\SUF@tocPAR@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocsubparfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocSUBPAR@font{\relax}
\or
  \def\SUF@tocSUBPAR@font{\itshape}
\or
  \def\SUF@tocSUBPAR@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{headerstyle}[\suftesi@val\suftesi@nr]
    {inner,center,plain,authortitleinner,authortitlecenter}[inner]{%
\ifcase\suftesi@nr\relax
  \def\SUF@rightmark{\SUF@Rheadstyle{\rightmark}}
  \def\SUF@leftmark{\SUF@Lheadstyle{\SUF@leftrightmark}}
\or
  \suftesi@centerheadertrue
  \def\SUF@rightmark{\SUF@Rheadstyle{\rightmark}}
  \def\SUF@leftmark{\SUF@Lheadstyle{\SUF@leftrightmark}}
\or
  \suftesi@sufplaintrue
\or
  \suftesi@authortitletrue
  \def\SUF@rightmark{\let\thanks\@gobble\SUF@Rheadstyle{\@headtitle}}
  \def\SUF@leftmark{\let\thanks\@gobble\SUF@Lheadstyle{\@author}}
\or
  \suftesi@authortitletrue
  \def\SUF@rightmark{\let\thanks\@gobble\SUF@Rheadstyle{\@headtitle}}
  \def\SUF@leftmark{\let\thanks\@gobble\SUF@Lheadstyle{\@author}}
  \suftesi@centerheadertrue
\fi}
\define@choicekey{}{headerfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@Rheadstyle{}
  \def\SUF@Lheadstyle{}
  \def\SUF@thepage{\thepage}
\or
  \def\SUF@Rheadstyle{\itshape}
  \def\SUF@Lheadstyle{\itshape}
  \def\SUF@thepage{\thepage}
\or
  \def\SUF@Rheadstyle{\SUF@headersmallcaps}
  \def\SUF@Lheadstyle{\SUF@headersmallcaps}
  \def\SUF@thepage{\SUF@headersmallcaps{\thepage}}
\fi}
\RequirePackage[inline]{enumitem}
  \setlist[itemize,1]{label=\color{sufgray}\textbullet}
  \setlist{itemsep=.5ex,parsep=0pt,listparindent=\parindent}
  \setlist[description]{font=\normalfont\itshape}
\define@choicekey{}{liststyle}[\suftesi@val\suftesi@nr]
    {bulged,aligned,indented}[bulged]{%
\ifcase\suftesi@nr\relax
  \setlist[enumerate,1]{leftmargin=0pt,label=\arabic*.}
  \setlist[enumerate,2]{leftmargin= 1.3\parindent,label=\alph*.}
  \setlist[enumerate,3]{leftmargin= 1.3\parindent,label=\roman*.}
  \setlist[itemize,1]{leftmargin=0pt}
  \setlist[itemize,2]{leftmargin=1.3\parindent}
  \setlist[itemize,3]{leftmargin=1.3\parindent}
\or
  \setlist[enumerate,1]{leftmargin=1\parindent,label=\arabic*.}
  \setlist[enumerate,2]{leftmargin= 1.5\parindent,label=\alph*.}
  \setlist[enumerate,3]{leftmargin= 1.5\parindent,label=\roman*.}
  \setlist[itemize,1]{leftmargin=1\parindent}
  \setlist[itemize,2]{leftmargin=1.5\parindent}
  \setlist[itemize,3]{leftmargin=1.5\parindent}
\or
  \setlist[enumerate,1]{leftmargin=2\parindent,label=\arabic*.}
  \setlist[enumerate,2]{leftmargin= 2.5\parindent,label=\alph*.}
  \setlist[enumerate,3]{leftmargin= 2.5\parindent,label=\roman*.}
  \setlist[itemize,1]{leftmargin=2\parindent}
  \setlist[itemize,2]{leftmargin=2.5\parindent}
  \setlist[itemize,3]{leftmargin=2.5\parindent}
\fi}
\define@choicekey{}{quotestyle}[\suftesi@val\suftesi@nr]
    {center,right,justify}[center]{%
\ifcase\suftesi@nr\relax
  \def\SUF@quote@style{\leftmargin=\parindent \rightmargin=\parindent}
\or
  \def\SUF@quote@style{\leftmargin=\parindent}
\or
  \def\SUF@quote@style{\leftmargin=0pt}
\fi}
\define@key{}{quotesize}[footnotesize]{
  \def\SUF@quotation@size{\csname #1\endcsname}}
\define@choicekey{}{footnotestyle}[\suftesi@val\suftesi@nr]
    {bulged,hung,dotted,superscript}[bulged]{%
\ifcase\suftesi@nr\relax
  \renewcommand\@makefntext{%
    \hskip-2.5em\makebox[2em][r]{\@thefnmark}\hskip.5em}
\or
  \renewcommand\@makefntext{%
    \leftskip=1em\hskip-1.5em%
      \makebox[1em][r]{\@thefnmark}\hskip.5em}
\or
  \renewcommand\@makefntext{%
    \@thefnmark.\hskip.5em}
\or
  \renewcommand\@makefntext{%
    \textsuperscript{\@thefnmark}\hskip.3em}
\fi}
\define@boolkey{}[SUF@]{fewfootnotes}[true]{}
\RequirePackage{caption}
\captionsetup{labelsep=period,font=small,textformat=period}
\define@choicekey{}{captionstyle}[\suftesi@val\suftesi@nr]
    {standard,sanserif,italic,smallcaps}[standard]{%
\ifcase\suftesi@nr\relax
\or
  \captionsetup{font+=sf}
\or
  \captionsetup{font+=it}
\or
  \captionsetup{labelfont=sc}
\fi}
\define@choicekey{}{style}[\suftesi@val\suftesi@nr]
  {roman1,roman2,roman3,roman4,roman5,roman6,
  italic1,italic2,italic3,italic4,italic5,italic6,
  italic7,italic8,italic9,italic10,italic11,italic12,
  smallcaps1,smallcaps2,smallcaps3,smallcaps4,smallcaps5,smallcaps6,
  smallcaps7,smallcaps8,smallcaps9,smallcaps10,smallcaps11,smallcaps12,
  FSPLa,FSPLb,FSPLc}
  [roman1]{%
\ifcase\suftesi@nr\relax
  \setkeys{}{chapstyle=left}
\or
  \setkeys{}{chapstyle=center}
\or
  \setkeys{}{chapstyle=right}
\or
  \setkeys{}{chapstyle=parleft}
\or
  \setkeys{}{chapstyle=parcenter}
\or
  \setkeys{}{chapstyle=parright}
\or
  \setkeys{}{
   chapstyle=left,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=center,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=right,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parleft,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parcenter,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parright,
   chapfont=italic,
   tocchapfont=italic,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=left,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=center,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=right,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parleft,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parcenter,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
   chapstyle=parright,
   chapfont=italic,
   tocchapfont=italic,
   secfont=smallcaps,
   headerfont=italic}
\or
  \setkeys{}{
  chapstyle=left,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=center,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=right,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parleft,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parcenter,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parright,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=left,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=center,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=right,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parleft,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parcenter,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
  \setkeys{}{
  chapstyle=parright,
  chapfont=smallcaps,
  tocchapfont=smallcaps,
  secfont=smallcaps,
  headerfont=smallcaps}
\or
\suftesi@periodicalaureotrue
\suftesi@FSPLtrue
  \setkeys{}{%
  pagelayout=periodicalaureo,
  style=roman5,
  chapnumstyle=roman,
  headerstyle=inner,
  footnotestyle=hung,
  liststyle=indented,
  tocstyle=leftpage}
\disable@keys{}
    {structure,documentstructure,pagelayout,partfont,chapfont,secfont,%
    subsecfont,subsubsecfont,partstyle,chapstyle,secstyle,%
    subsecstyle,subsubsecstyle,partnumstyle,chapnumstyle,%
    secnumstyle,tocstyle,headerstyle,headerfont,quotestyle,%
    quotesize,footnotestyle,liststyle,captionstyle}
\or
\suftesi@periodicalaureotrue
\suftesi@FSPLtrue
  \setkeys{}{%
  pagelayout=periodicalaureo,
  style=italic5,
  chapnumstyle=roman,
  headerstyle=inner,
  headerfont=italic,
  footnotestyle=hung,
  liststyle=indented,
  tocstyle=leftpage}
\disable@keys{}
    {structure,documentstructure,pagelayout,partfont,chapfont,secfont,%
    subsecfont,subsubsecfont,partstyle,chapstyle,secstyle,%
    subsecstyle,subsubsecstyle,partnumstyle,chapnumstyle,%
    secnumstyle,tocstyle,headerstyle,headerfont,quotestyle,%
    quotesize,footnotestyle,liststyle,captionstyle}
\or
\suftesi@periodicalaureotrue
\suftesi@FSPLtrue
  \setkeys{}{%
  pagelayout=periodicalaureo,
  style=smallcaps5,
  chapnumstyle=roman,
  headerstyle=inner,
  headerfont=smallcaps,
  secfont=smallcaps,
  footnotestyle=hung,
  liststyle=indented,
  tocstyle=leftpage}
\disable@keys{}
    {structure,documentstructure,pagelayout,partfont,chapfont,secfont,%
    subsecfont,subsubsecfont,partstyle,chapstyle,secstyle,%
    subsecstyle,subsubsecstyle,partnumstyle,chapnumstyle,%
    secnumstyle,tocstyle,headerstyle,headerfont,quotestyle,%
    quotesize,footnotestyle,liststyle,captionstyle}
\fi}
\define@choicekey{}{authortitlealign}[\suftesi@val\suftesi@nr]
    {left,center,right}[left]{%
\ifcase\suftesi@nr\relax
  \def\SUF@authortitle@align{\filright}
\or
  \def\SUF@authortitle@align{\filcenter}
\or
  \def\SUF@authortitle@align{\filleft}
\fi}
\define@choicekey{}{reverseauthortitle}[\suftesi@val\suftesi@nr]
    {true,false}[true]{%
\ifcase\suftesi@nr\relax
  \def\SUF@first{\SUF@authorstyle\SUF@authorfont\@author}
  \def\SUF@second{\SUF@titlestyle\SUF@titlefont\@title}
\or
  \def\SUF@first{\SUF@titlestyle\SUF@titlefont\@title}
  \def\SUF@second{\SUF@authorstyle\SUF@authorfont\@author}
  \relax
\fi}
\define@choicekey{}{maketitlestyle}[\suftesi@val\suftesi@nr]
    {suftesi,standard}[suftesi]{%
\ifcase\suftesi@nr\relax
  \def\SUF@titlestyle{\SUF@chaptersize\color{sufred}\sffamily}
  \def\SUF@authorstyle{\small}
  \def\SUF@datefont{\small}
\or
  \def\SUF@titlestyle{\LARGE}
  \def\SUF@authorstyle{\large}
  \def\SUF@datefont{\small}
\fi}
\define@choicekey{}{titlefont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[suftesi]{%
\ifcase\suftesi@nr\relax
  \def\SUF@titlefont{\relax}
\or
  \def\SUF@titlefont{\itshape}
\or
  \def\SUF@titlefont{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{authorfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[suftesi]{%
\ifcase\suftesi@nr\relax
  \def\SUF@authorfont{\relax}
\or
  \def\SUF@authorfont{\itshape}
\or
  \def\SUF@authorfont{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{datefont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@datefont{\relax}
\or
  \def\SUF@datefont{\itshape}
\or
  \def\SUF@datefont{\expandafter\SUF@titlesmallcaps}
\fi}
\define@choicekey{}{toctitlefont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[italic]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocTIT@font{\relax}
\or
  \def\SUF@tocTIT@font{\itshape}
\or
  \def\SUF@tocTIT@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{tocauthorfont}[\suftesi@val\suftesi@nr]
    {roman,italic,smallcaps}[roman]{%
\ifcase\suftesi@nr\relax
  \def\SUF@tocAUT@font{\relax}
\or
  \def\SUF@tocAUT@font{\itshape}
\or
  \def\SUF@tocAUT@font{\expandafter\SUF@TOCtitlesmallcaps}
\fi}
\define@choicekey{}{documentstructure}[\suftesi@val\suftesi@nr]
    {book,article,collection}[book]{%
\ClassWarningNoLine{suftesi}{%
  'documentstructure' option is deprecated.\MessageBreak
  Use 'structure' option instead}
\ifcase\suftesi@nr\relax
  \setkeys{}{structure=book}
\or
  \setkeys{}{structure=article}
\or
  \setkeys{}{structure=collection}
\fi}
\define@choicekey{}{crop}[\suftesi@val\suftesi@nr]
    {true,false}[true]{%
  \ClassWarningNoLine{suftesi}{%
    'crop' option is deprecated.\MessageBreak
    Use 'version' option instead}
\ifcase\suftesi@nr\relax
  \setkeys{}{version=draft}
\or
  \setkeys{}{version=screen}
\fi}
\define@choicekey{}{papertitlestyle}[\suftesi@val\suftesi@nr]
    {left,center,right}[left]{%
\ClassWarningNoLine{suftesi}{%
  'papertitlestyle' option is deprecated.\MessageBreak
  Use 'authortitlealign' option instead}
\ifcase\suftesi@nr\relax
  \def\SUF@authortitle@align{\filright}
\or
  \def\SUF@authortitle@align{\filcenter}
\or
  \def\SUF@authortitle@align{\filleft}
\fi}
\define@choicekey{}{revauthortitle}[\suftesi@val\suftesi@nr]
    {true,false}[true]{%
\ClassWarningNoLine{suftesi}{%
  'revauthortitle' option is deprecated.\MessageBreak
  Use 'reverseauthortitle' option instead}
\ifcase\suftesi@nr\relax
  \def\SUF@first{\SUF@authorstyle\SUF@authorfont\@author}
  \def\SUF@second{\SUF@titlestyle\SUF@titlefont\@title}
\or
  \def\SUF@first{\SUF@titlestyle\SUF@titlefont\@title}
  \def\SUF@second{\SUF@authorstyle\SUF@authorfont\@author}
  \relax
\fi}
\ExecuteOptionsX<>{
  structure=book,
  pagelayout=standard,
  headerstyle=inner,
  headerfont=roman,
  defaultfont=cochineal,
  greekfont=none,
  mathfont=minimal,
  smallcapsstyle=low,
  liststyle=bulged,
  footnotestyle=bulged,
  quotesize=footnotesize,
  quotestyle=center,
  captionstyle=standard,
  marginpar=true,
  tocstyle=standard,
  partstyle=left,
  chapstyle=left,
  secstyle=left,
  subsecstyle=left,
  subsubsecstyle=left,
  partnumstyle=Roman,
  chapnumstyle=arabic,
  secnumstyle=arabic,
  subsecnumstyle=arabic,
  subsubsecnumstyle=arabic,
  partfont=roman,
  chapfont=roman,
  secfont=italic,
  subsecfont=roman,
  subsubsecfont=roman,
  parfont=italic,
  subparfont=roman,
  tocpartfont=roman,
  tocchapfont=roman,
  tocsecfont=roman,
  tocsubsecfont=roman,
  tocsubsubsecfont=roman,
  tocparfont=roman,
  tocsubparfont=roman,
  maketitlestyle=suftesi,
  titlefont=roman,
  authorfont=roman,
  datefont=roman,
  toctitlefont=italic,
  tocauthorfont=roman,
  reverseauthortitle=false,
  authortitlealign=left}
\def\XKV@classoptionslist{}
\ProcessOptionsX<>\relax
\RequirePackage{multicol}
\RequirePackage{emptypage}
\RequirePackage{microtype}
\RequirePackage{color}
  \definecolor{sufred}{rgb}{0.5,0,0}
  \definecolor{sufgray}{rgb}{0.5,0.5,0.5}
\RequirePackage{iftex}
\ifLuaTeX
  \RequirePackage{luatex85}
\fi
\RequirePackage{etoolbox}
\ifsuftesi@FSPL
  \RequirePackage{cclicenses}
\fi
\ifsuftesi@screen
  \newcommand*\crop[1][]{}
    \ifsuftesi@screencentered
      \geometry{hmarginratio=1:1}
    \fi
  \else
 \RequirePackage[a4,cam,center]{crop}
\fi
\unless\ifPDFTeX
\AtBeginDocument{%
\@ifpackageloaded{fontspec}
  {\relax}
  {\ClassError{suftesi}
    {***********************************\MessageBreak
    * For using suftesi with XeLaTeX\MessageBreak
    * load either 'fontspec' or 'mathspec'\MessageBreak
    * For using suftesi with LuaLaTeX\MessageBreak
    * load 'fontspec' \MessageBreak
    ************************************}
    {***********************************\MessageBreak
    * For using suftesi with XeLaTeX\MessageBreak
    * load either 'fontspec' or 'mathspec'\MessageBreak
    * For using suftesi with LuaLaTeX\MessageBreak
    * load 'fontspec' \MessageBreak
    ************************************}}}
\else
\RequirePackage[LGR,T1]{fontenc}
\RequirePackage{substitutefont}
\AtBeginDocument{\fontencoding{T1}\selectfont}
\ifsuftesi@nofont
\ifsuftesi@greekfont
  \ClassWarningNoLine{suftesi}{%
    Unused 'greekfont' option}%
    \suftesi@greekfontfalse
      \else\suftesi@greekfontfalse\fi
\else
\ifsuftesi@lmodern
  \RequirePackage{lmodern}
    \ifsuftesi@greekfont
     \ClassWarningNoLine{suftesi}{%
       Unused 'greekfont' option}%
       \suftesi@greekfontfalse
         \else\suftesi@greekfontfalse\fi
\else
  \ifsuftesi@mathpazo
    \RequirePackage[osf,sc]{mathpazo}
    \RequirePackage[scaled=0.8]{beramono}
    \renewcommand{\sfdefault}{iwona}
    \ifsuftesi@greekfont
    \ifsuftesi@bodoni
    \gdef\SUFfntscale{0.96}
    \else
    \ifsuftesi@artemisia
    \gdef\SUFfntscale{0.97}
    \else
    \ifsuftesi@porson
    \gdef\SUFfntscale{1.17}
    \else
    \ifsuftesi@cbgreek
    \def\lmfntscale{1.06}
    \else
    \fi
    \fi
    \fi
    \fi
    \else
    \ClassWarningNoLine{suftesi}{\MessageBreak
    If you need the Greek font remember\MessageBreak
    to set one of the following options:\MessageBreak
    greekfont=artemisia,\MessageBreak
    greekfont=porson,\MessageBreak
    greekfont=cbgreek}
    \fi
\else
  \ifsuftesi@palatino
    \RequirePackage[full]{textcomp}
    \RequirePackage{newpxtext}
    \RequirePackage[scaled=1.06]{biolinum}
    \RequirePackage[varqu,varl]{inconsolata}
    \ifsuftesi@mathextended
    \RequirePackage{amsthm}
    \RequirePackage[bigdelims,vvarbb]{newpxmath}
    \RequirePackage[cal=boondoxo]{mathalpha}
    \else
    \ifsuftesi@mathminimal
    \RequirePackage[bigdelims,vvarbb]{newpxmath}
    \else
    \fi
    \fi
    \useosf
    \useproportional
    \ifsuftesi@greekfont
    \ifsuftesi@bodoni
    \gdef\SUFfntscale{0.96}
    \else
    \ifsuftesi@artemisia
    \gdef\SUFfntscale{0.97}
    \else
    \ifsuftesi@porson
    \gdef\SUFfntscale{1.17}
    \else
    \ifsuftesi@cbgreek
    \def\lmfntscale{1.06}
    \else
    \fi
    \fi
    \fi
    \fi
    \else
    \ClassWarningNoLine{suftesi}{\MessageBreak
    If you need the Greek font remember\MessageBreak
    to set one of the following options:\MessageBreak
    greekfont=artemisia,\MessageBreak
    greekfont=porson,\MessageBreak
    greekfont=cbgreek}
    \fi
\else
  \ifsuftesi@libertine
    \RequirePackage{textcomp}
    \RequirePackage[sb]{libertine}
    \RequirePackage[varqu,varl,scaled=0.94]{inconsolata}
    \ifsuftesi@mathextended
    \RequirePackage{amsthm}
    \RequirePackage{libertinust1math}
    \RequirePackage[cal=stix,scr=boondoxo,bb=boondox]{mathalpha}
    \else
    \ifsuftesi@mathminimal
    \RequirePackage{libertinust1math}
    \else
    \fi
    \fi
    \useosf
    \ifsuftesi@bodoni
    \gdef\SUFfntscale{0.9}
    \else
    \ifsuftesi@artemisia
    \gdef\SUFfntscale{0.91}
    \else
    \ifsuftesi@porson
    \gdef\SUFfntscale{1.1}
    \else
    \fi
    \fi
    \fi
\else
  \ifsuftesi@cochineal
    \RequirePackage{textcomp}
    \RequirePackage{cochineal}
    \RequirePackage[varqu,varl,var0]{inconsolata}
    \RequirePackage{biolinum}
    \ifsuftesi@mathextended
    \RequirePackage{amsthm}
    \RequirePackage[cochineal,bigdelims,cmintegrals,vvarbb]{newtxmath}
    \RequirePackage[cal=boondoxo]{mathalpha}
    \else
    \ifsuftesi@mathminimal
    \RequirePackage[cochineal,bigdelims,cmintegrals,vvarbb]{newtxmath}
    \else
    \fi
    \fi
    \useosf
    \useproportional
    \ifsuftesi@bodoni
    \gdef\SUFfntscale{0.9}
    \else
    \ifsuftesi@artemisia
    \gdef\SUFfntscale{0.905}
    \else
    \ifsuftesi@porson
    \gdef\SUFfntscale{1.1}
    \else
    \fi
    \fi
    \fi
    \else
    \fi
    \fi
    \fi
    \fi
    \fi
    \fi
\fi
\unless\ifPDFTeX\else
\ifsuftesi@greekfont
 \ifsuftesi@artemisia
  \def\SUF@greekfamily{artemisia}
   \else
    \ifsuftesi@porson
     \def\SUF@greekfamily{porson}
      \else
       \ifsuftesi@bodoni
        \def\SUF@greekfamily{bodoni}
         \else
          \ifsuftesi@cbgreek
           \def\SUF@greekfamily{lmr}
         \else
      \fi
    \fi
  \fi
\fi
\AtEndPreamble{
  \substitutefont{LGR}{\rmdefault}{\SUF@greekfamily}
  \DeclareRobustCommand{\greektext}{%
    \usefont{LGR}{\SUF@greekfamily}{\f@series}{\f@shape}
    \def\encodingdefault{LGR}}
  \DeclareTextFontCommand{\textgreek}{\greektext}}
\ifsuftesi@cbgreek
   \else
\DeclareFontFamily{LGR}{bodoni}{}
\DeclareFontShape{LGR}{bodoni}{m}{n}{<-> s * [\SUFfntscale] gbodonirg6a}{}
\DeclareFontShape{LGR}{bodoni}{m}{it}{<-> s * [\SUFfntscale] gbodonii6a}{}
\DeclareFontShape{LGR}{bodoni}{b}{n}{<-> s * [\SUFfntscale] gbodonib6a}{}
\DeclareFontShape{LGR}{bodoni}{b}{it}{<-> s * [\SUFfntscale] gbodonibi6a}{}
\DeclareFontShape{LGR}{bodoni}{m}{sl}{<-> s * [\SUFfntscale] gbodonio6a}{}
\DeclareFontShape{LGR}{bodoni}{b}{sl}{<-> s * [\SUFfntscale] gbodonibo6a}{}
\DeclareFontShape{LGR}{bodoni}{m}{sc}{<-> s * [\SUFfntscale] gbodonisc6a}{}
\DeclareFontShape{LGR}{bodoni}{m}{sco}{<-> s * [\SUFfntscale] gbodonisco6a}{}

\DeclareFontShape{LGR}{bodoni}{bx}{n}{<-> s * [\SUFfntscale] gbodonib6a}{}
\DeclareFontShape{LGR}{bodoni}{bx}{it}{<-> s * [\SUFfntscale] gbodonibi6a}{}
\DeclareFontShape{LGR}{bodoni}{bx}{sl}{<-> s * [\SUFfntscale] gbodonibo6a}{}

\DeclareFontFamily{LGR}{artemisia}{}
\DeclareFontShape{LGR}{artemisia}{m}{n}{<-> s * [\SUFfntscale] gartemisiarg6a}{}
\DeclareFontShape{LGR}{artemisia}{m}{it}{<-> s * [\SUFfntscale] gartemisiai6a}{}
\DeclareFontShape{LGR}{artemisia}{b}{n}{<-> s * [\SUFfntscale] gartemisiab6a}{}
\DeclareFontShape{LGR}{artemisia}{b}{it}{<-> s * [\SUFfntscale] gartemisiabi6a}{}
\DeclareFontShape{LGR}{artemisia}{m}{sl}{<-> s * [\SUFfntscale] gartemisiao6a}{}
\DeclareFontShape{LGR}{artemisia}{b}{sl}{<-> s * [\SUFfntscale] gartemisiabo6a}{}
\DeclareFontShape{LGR}{artemisia}{m}{sc}{<-> s * [\SUFfntscale] gartemisiasc6a}{}
\DeclareFontShape{LGR}{artemisia}{m}{sco}{<-> s * [\SUFfntscale] gartemisiasco6a}{}

\DeclareFontShape{LGR}{artemisia}{bx}{n}{<-> s * [\SUFfntscale] gartemisiab6a}{}
\DeclareFontShape{LGR}{artemisia}{bx}{it}{<-> s * [\SUFfntscale] gartemisiabi6a}{}
\DeclareFontShape{LGR}{artemisia}{bx}{sl}{<-> s * [\SUFfntscale] gartemisiabo6a}{}

\DeclareFontFamily{LGR}{porson}{}
\DeclareFontShape{LGR}{porson}{m}{n}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{m}{it}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{b}{n}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{b}{it}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{m}{sl}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{b}{sl}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{m}{sc}{<-> s * [\SUFfntscale] gporsonrg6a}{}

\DeclareFontShape{LGR}{porson}{bx}{n}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{bx}{it}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\DeclareFontShape{LGR}{porson}{bx}{sl}{<-> s * [\SUFfntscale] gporsonrg6a}{}
\fi
\else
\fi
\fi
\RequirePackage[newparttoc]{titlesec}
  \newlength{\sectionsep}
  \setlength{\sectionsep}{\dimexpr(\baselineskip) plus 1pt minus 1pt}
\unless\ifPDFTeX
  \DeclareRobustCommand{\SUF@TOCtitlesmallcaps}[1]{%
    \addfontfeature{LetterSpace=10}\scshape\SUF@TOCMakeLowercase{#1}}
  \DeclareRobustCommand{\SUF@titlesmallcaps}[1]{%
    \addfontfeature{LetterSpace=10}\scshape\SUF@MakeLowercase{#1}}
  \DeclareRobustCommand{\SUF@headersmallcaps}[1]{%
    \addfontfeature{LetterSpace=10}\scshape\SUF@MakeLowercase{#1}}
\else
  \DeclareRobustCommand{\SUF@TOCtitlesmallcaps}[1]{%
    \scshape\SUF@TOCMakeLowercase{\textls*{#1}}}%
  \DeclareRobustCommand{\SUF@titlesmallcaps}[1]{%
    \scshape\SUF@MakeLowercase{\textls*{#1}}}%
  \DeclareRobustCommand{\SUF@headersmallcaps}[1]{%
    \scshape\SUF@MakeLowercase{\textls*{#1}}}%
\fi
\newlength\SUF@chapbeforesep
\def\SUF@default@CHAPTER{
\ifsuftesi@numparchap
  \titleformat{\chapter}[display]
    {\startchappartialtoc\SUF@chaptersize\SUF@CHAP@align}
    {\SUF@thechapter\SUF@dotchap}
    {2ex}
    {\SUF@CHAP@font}
  \else
  \titleformat{\chapter}[hang]
    {\startchappartialtoc\SUF@chaptersize\SUF@CHAP@align}
    {\SUF@thechapter\SUF@dotchap}
    {3em}
    {\SUF@CHAP@font}
  \fi
\ifsuftesi@numparchap
  \setlength{\SUF@chapbeforesep}{-6ex}
    \else
  \setlength{\SUF@chapbeforesep}{0pt}
\fi}
\def\SUF@default@SECTIONS{
\ifsuftesi@numparsec
  \titleformat{\section}[display]
    {\startsecpartialtoc\SUF@sectionsize\SUF@SEC@align}
    {\SUF@thesection\SUF@dotsec}
    {0ex}
    {\SUF@SEC@font}
  \titlespacing*{\section}{0em}{\sectionsep}{\sectionsep}[0em]
\else
  \titleformat{\section}[hang]
    {\startsecpartialtoc\SUF@sectionsize\SUF@SEC@align}
    {\SUF@thesection\SUF@dotsec}
    {1em}
    {\SUF@SEC@font}
  \titlespacing*{\section}{0ex}{\sectionsep}{\sectionsep}[0ex]
\fi
\ifsuftesi@numparsubsec
  \titleformat{\subsection}[display]
    {\SUF@subsectionsize\SUF@SUBSEC@align}
    {\textnormal\SUF@thesubsection\SUF@dotsubsec}
    {0ex}
    {\SUF@SUBSEC@font}
  \titlespacing*{\subsection}{0em}{\sectionsep}{\sectionsep}[0em]
\else
  \titleformat{\subsection}[hang]
    {\SUF@subsectionsize\SUF@SUBSEC@align}
    {\textnormal\SUF@thesubsection\SUF@dotsubsec}
    {1em}
    {\SUF@SUBSEC@font}
  \titlespacing*{\subsection}{\parindent}{\sectionsep}{\sectionsep}[0ex]
\fi
\ifsuftesi@numparsubsubsec
  \titleformat{\subsubsection}[display]
    {\SUF@subsectionsize\SUF@SUBSUBSEC@align}
    {\textnormal\SUF@thesubsubsection\SUF@dotsubsubsec}
    {0ex}
    {\SUF@SUBSUBSEC@font}
  \titlespacing*{\subsubsection}{0em}{\sectionsep}{\sectionsep}[0em]
\else
  \titleformat{\subsubsection}[hang]
    {\SUF@subsectionsize\SUF@SUBSUBSEC@align}
    {\textnormal\SUF@thesubsubsection\SUF@dotsubsubsec}
    {1em}
    {\SUF@SUBSUBSEC@font}
  \titlespacing*{\subsubsection}{\parindent}{\sectionsep}{\sectionsep}[0ex]
  \fi}
\SUF@default@CHAPTER
\SUF@default@SECTIONS
\ifsuftesi@periodical
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@periodicalaureo
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@compact
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@compactaureo
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@supercompact
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@supercompactaureo
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@pocketa
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@pocketb
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
\ifsuftesi@pocketc
  \titlespacing*{\chapter}{0em}{\SUF@chapbeforesep}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{0pt}{18ex}
\else
  \titlespacing*{\chapter}{0em}{%
     \dimexpr(6ex+\SUF@chapbeforesep)}{18ex}
  \titlespacing*{name=\chapter,numberless}{0em}{6ex}{18ex}
        \fi
       \fi
      \fi
     \fi
    \fi
   \fi
  \fi
 \fi
\fi
\ifsuftesi@article
\def\chapter#1{\ClassError{suftesi}
  {\noexpand\chapter level is undefined
    using 'structure=article'}
  {\noexpand\chapter level is undefined
    using 'structure=article'}}
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{%
  \@arabic\c@section}
\renewcommand\thesubsection{%
  \thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{%
  \thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph{%
  \thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph{%
  \theparagraph.\@arabic\c@subparagraph}
\renewcommand\part{%
  \ifSUF@partpage
  \if@openright
  \cleardoublepage
  \else
  \clearpage
  \fi
  \thispagestyle{plain}%
  \fi
  \if@twocolumn
  \onecolumn
  \@tempswatrue
  \else
  \@tempswafalse
  \fi
  \ifSUF@partpage
  \null\vfil
  \fi
  \secdef\@part\@spart}
\fi
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
  \refstepcounter{part}%
  \addcontentsline{toc}{part}{\normalfont\normalsize
    \SUF@tocpartname\hskip.5em{\SUF@tocPARTnum@font\SUF@thepart}%
    \SUF@dotpart\hspace{1em}\SUF@tocPART@font#1}%
  \else
  \addcontentsline{toc}{part}{\normalfont\normalsize
    \SUF@tocPART@font#1}%
  \fi
  \markboth{}{}%
  {\SUF@PART@align\SUF@partsize
    \interlinepenalty \@M
    \ifnum \c@secnumdepth >-2\relax
    \addvspace{4ex}
    \noindent\partname\hskip.5em{\SUF@PART@font\SUF@thepart}\SUF@dotpart
    \ifsuftesi@numparpart
    \par
    \vskip2ex
    \else
    \hspace{1em}
    \fi
    \noindent\SUF@PART@font#2\par}%
  \@endpart}
\def\@spart#1{%
  {\SUF@PART@align\SUF@partsize
    \interlinepenalty \@M
    \addvspace{4ex}
    \noindent\SUF@PART@font#1\par}%
  \@endpart}
\ifsuftesi@article
  \def\@endpart{%
    \ifSUF@partpage
    \vfil\newpage
    \if@twoside
    \if@openright
    \null
    \thispagestyle{empty}%
    \newpage
    \fi
    \fi
    \fi
    \if@tempswa
    \twocolumn
    \fi}
\else
  \def\@endpart{\vfil\newpage
    \if@twoside
    \if@openright
    \null
    \thispagestyle{empty}%
    \newpage
    \fi
    \fi
    \if@tempswa
    \twocolumn
    \fi}
\fi
\titleformat{\paragraph}[runin]
  {}
  {\theparagraph}
  {.5em}
  {\SUF@PAR@font}
  [{.}\hspace*{1em}]
\titlespacing*{\paragraph}{\parindent}{.5\sectionsep}{.5\sectionsep}
\titleformat{\subparagraph}[runin]
  {}
  {\thesubparagraph}
  {.5em}
  {\SUF@SUBPAR@font}
  [{.}\hspace*{1em}]
\titlespacing*{\subparagraph}{\parindent}{.5\sectionsep}{.5\sectionsep}
\ifsuftesi@article
\AtBeginDocument{%
\@ifpackageloaded{biblatex}{%
  \defbibheading{bibliography}[\refname]{%
    \section*{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{biblist}[\biblistname]{%
    \section*{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{bibintoc}[\refname]{%
    \section*{#1}%
    \addcontentsline{toc}{section}{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{biblistintoc}[\biblistname]{%
    \section*{#1}%
    \addcontentsline{toc}{section}{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{bibnumbered}[\refname]{%
    \section{#1}}
  \defbibheading{biblistnumbered}[\biblistname]{%
    \section{#1}}
  \defbibheading{subbibliography}[\refname]{%
    \subsection*{#1}}
  \defbibheading{subbibintoc}[\refname]{%
    \subsection*{#1}%
    \addcontentsline{toc}{subsection}{#1}}
  \defbibheading{subbibnumbered}[\refname]{%
    \subsection{#1}}}
{\relax}}
\else
\AtBeginDocument{%
\@ifpackageloaded{biblatex}{%
  \defbibheading{bibliography}[\bibname]{%
    \chapter*{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{biblist}[\biblistname]{%
    \chapter*{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{bibintoc}[\bibname]{%
    \chapter*{#1}%
    \addcontentsline{toc}{chapter}{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{biblistintoc}[\biblistname]{%
    \chapter*{#1}%
    \addcontentsline{toc}{chapter}{#1}%
    \@mkboth{#1}{#1}}
  \defbibheading{bibnumbered}[\bibname]{%
    \chapter{#1}}
  \defbibheading{biblistnumbered}[\biblistname]{%
    \chapter{#1}}
  \defbibheading{subbibliography}[\refname]{%
    \section*{#1}%
    \if@twoside\markright{#1}\fi}
  \defbibheading{subbibintoc}[\refname]{%
    \section*{#1}%
    \addcontentsline{toc}{section}{#1}%
    \if@twoside\markright{#1}\fi}
  \defbibheading{subbibnumbered}[\refname]{%
    \section{#1}}}
{\relax}}
\fi
\ifsuftesi@collection
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi\vspace{6ex}}
\else
\ifSUF@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
         \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
  \fi
\fi
\newcommand\abstractname{Abstract}
\RequirePackage{appendix}
\noappendicestocpagenum
\def\appendicesname{%
  \ClassError{suftesi}%
    {Command \noexpand\appendicesname undefined\MessageBreak
    Redefine the \noexpand\appendixpagename command instead.
    See the 'appendix' package documentation.\MessageBreak
    \noexpand\renewcommand{\noexpand\appendixpagename{newname}}}
  {Command \noexpand\appendicesname undefined\MessageBreak
    Redefine the \noexpand\appendixpagename command instead.
    See the 'appendix' package documentation.\MessageBreak
    \noexpand\renewcommand{\noexpand\appendixpagename{newname}}}}
\renewcommand{\@chap@pppage}{%
  \clear@ppage
  \thispagestyle{plain}%
  \if@twocolumn\onecolumn\@tempswatrue\else\@tempswafalse\fi
  \null\vfil
  \markboth{}{}%
  {\centering
    \interlinepenalty \@M
    \normalfont
    \SUF@chaptersize
        \SUF@CHAP@font\expandafter\appendixpagename\par}%
  \if@dotoc@pp
  \addappheadtotoc
  \fi
  \vfil\newpage
  \if@twoside
  \if@openright
  \null
  \thispagestyle{empty}%
  \newpage
  \fi
  \fi
  \if@tempswa
  \twocolumn
  \fi}
\renewcommand{\@sec@pppage}{%
  \par
  \addvspace{4ex}%
  \@afterindentfalse
  {\parindent \z@ \raggedright
    \interlinepenalty \@M
    \normalfont
    \SUF@chaptersize
        \SUF@CHAP@font\expandafter\appendixpagename%
    \markboth{}{}\par}%
  \if@dotoc@pp
  \addappheadtotoc
  \fi
  \nobreak
  \vskip 3ex
  \@afterheading}
\def\suf@appendixtoc{%
  \ifsuftesi@pagelefttoc
  \titlecontents{chapter}
  [\SUF@tochang@chap]
  {\addvspace{2ex}}
  {\hskip-\SUF@tochang@chap%
    \makebox[1em][l]{\thecontentspage}%
    \hskip\SUF@addto@tochang@chap%
    \makebox[\SUF@label@chap][l]{%
      \thecontentslabel}\hspace*{1em}%
    \SUF@tocCHAP@font}
  {\hskip-\SUF@tochang@chap%
    \makebox[1em][l]{\thecontentspage}%
    \hskip\SUF@addto@tochang@chap\SUF@tocCHAP@font}
  {}
  [\addvspace{1ex}]
  \ifsuftesi@ctocsec
  \titlecontents*{section}[\SUF@tochang@chap]{}{%
    \thecontentslabel\adjtoclabelsep\SUF@tocSEC@font}{\SUF@tocSEC@font}{,
    \thecontentspage.}[][\adjtocpagesep][]
  \else
  \titlecontents{section}
  [\SUF@tochang@sec]
  {}
  {\hskip-\SUF@tochang@sec%
    \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@sec%
    \makebox[\SUF@label@sec][l]{\thecontentslabel}\hspace*{1em}%
    \SUF@tocSEC@font}
  {\hskip-\SUF@tochang@sec%
    \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@sec%
    \SUF@tocSEC@font}
  {}
  \fi
  \else
  \titlecontents{chapter}
  [\SUF@tocindent@chap]
  {\addvspace{2ex}}
  {\hskip-\SUF@tocindent@chap%
    \makebox[\SUF@label@chap][l]{\thecontentslabel}%
    \hspace*{1em}%
    \SUF@tocCHAP@font}
  {\hskip-\SUF@tocindent@chap%
    \SUF@tocCHAP@font}
  {\SUF@chaptitlerule\contentspage}
  [\addvspace{1ex}]
  \ifsuftesi@ctocsec
  \titlecontents*{section}[\SUF@tocindent@chap]{}{%
    \thecontentslabel\adjtoclabelsep\SUF@tocSEC@font}{\SUF@tocSEC@font}{,
    \thecontentspage.}[][\adjtocpagesep][]
  \else
  \titlecontents{section}
  [\SUF@tocindent@sec]
  {}
  {\hskip-\dimexpr(\SUF@label@sec+1em)%
    \makebox[\SUF@label@sec][l]{\thecontentslabel}\hspace*{1em}%
    \SUF@tocSEC@font}
  {\hskip-\dimexpr(\SUF@label@sec+1em)%
    \SUF@tocSEC@font}
  {\ifsuftesi@article\SUF@chaptitlerule%
    \else\SUF@titlerule\fi\contentspage}
  \fi}
\ifsuftesi@article
\renewcommand\appendix{\par
  \suf@appendixtoc%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\SUF@thesection{\@Alph\c@section}%
  \gdef\SUF@HEAD@thesection{\@Alph\c@section}%
  \renewcommand{\thesection}{\@Alph\c@section}}
\else
\renewcommand\appendix{\par
  \suf@appendixtoc%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\SUF@thechapter{\@Alph\c@chapter}%
  \gdef\SUF@HEAD@thechapter{\@Alph\c@chapter}%
  \renewcommand{\thechapter}{\@Alph\c@chapter}}
\fi
\renewenvironment{theindex}
  {\if@twocolumn
     \@restonecolfalse
   \else
     \@restonecoltrue
   \fi
   \ifsuftesi@article
   \twocolumn[\section*{\indexname}]%
   \else
   \twocolumn[\@makeschapterhead{\indexname}]%
   \fi
   \@mkboth{\indexname}{\indexname}%
   \thispagestyle{plain}%
   \raggedright%
   \parindent\z@
   \parskip\z@ \@plus .3\p@\relax
   \columnseprule \z@
   \columnsep 35\p@
   \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\RequirePackage{titletoc}
\newlength\SUF@label@chap
\setlength\SUF@label@chap{.5em}
\newcommand*{\toclabelwidth}[2]{%
  \AtBeginDocument{
    \addtolength{\csname SUF@label@#1\endcsname}{#2}%
    \addtolength{\csname SUF@tocindent@#1\endcsname}{#2}}}
\newcommand{\adjtoclabelsep}{\hskip.2em plus 1pt minus 1pt}
\newcommand{\adjtocpagesep}{\hskip.5em plus 2pt minus 1pt}
\newcommand{\toclabelspace}{%
  \ClassError{suftesi}
    {\MessageBreak
    \noexpand\toclabelspace is not more defined\MessageBreak
    Use \noexpand\toclabelwidth instead.\MessageBreak
    See package documentation for details}
    {\MessageBreak
    \noexpand\toclabelspace is not more defined\MessageBreak
    Use \noexpand\toclabelwidth instead.\MessageBreak
    See package documentation for details}}
\newlength{\SUF@tochang}
\setlength{\SUF@tochang}{3em}
\AtBeginDocument{%
\newlength\SUF@label@part
\newlength\SUF@label@sec
\newlength\SUF@label@subsec
\newlength\SUF@label@subsubsec
\newlength\SUF@label@par
\newlength\SUF@label@subpar
\newlength\SUF@label@fig
\newlength\SUF@label@tab
\setlength\SUF@label@part
    {\SUF@label@chap}
\setlength\SUF@label@sec
    {\dimexpr(\SUF@label@chap+.5em)}
\setlength\SUF@label@subsec
    {\dimexpr(\SUF@label@sec+.5em)}
\setlength\SUF@label@subsubsec
    {\dimexpr(\SUF@label@subsec+.5em)}
\setlength\SUF@label@par
    {\dimexpr(\SUF@label@subsubsec+.5em)}
\setlength\SUF@label@subpar
    {\dimexpr(\SUF@label@par+.5em)}
\setlength\SUF@label@fig
    {\SUF@label@sec}
\setlength\SUF@label@tab
    {\SUF@label@sec}}
\ifsuftesi@pagelefttoc
\contentsmargin{0pt}
\AtBeginDocument{%
\newlength\SUF@tochang@chap
\newlength\SUF@tochang@sec
\newlength\SUF@tochang@subsec
\newlength\SUF@tochang@subsubsec
\newlength\SUF@tochang@par
\newlength\SUF@tochang@subpar
\newlength\SUF@tochang@fig
\newlength\SUF@tochang@tab
\newlength\SUF@addto@tochang@chap
\newlength\SUF@addto@tochang@sec
\newlength\SUF@addto@tochang@subsec
\newlength\SUF@addto@tochang@subsubsec
\newlength\SUF@addto@tochang@par
\newlength\SUF@addto@tochang@subpar
\newlength\SUF@addto@tochang@fig
\newlength\SUF@addto@tochang@tab
\setlength\SUF@tochang@chap
    {\dimexpr(1em+\SUF@tochang+\SUF@label@chap+1em)}
\setlength\SUF@tochang@sec
    {\dimexpr(\SUF@tochang@chap+\SUF@label@sec+1em)}
\setlength\SUF@tochang@subsec
    {\dimexpr(\SUF@tochang@sec+\SUF@label@subsec+1em)}
\setlength\SUF@tochang@subsubsec
    {\dimexpr(\SUF@tochang@subsec+\SUF@label@subsubsec+1em)}
\setlength\SUF@tochang@par
    {\dimexpr(\SUF@tochang@subsubsec+\SUF@label@par+1em)}
\setlength\SUF@tochang@subpar
    {\dimexpr(\SUF@tochang@par+\SUF@label@subpar+1em)}
\setlength\SUF@tochang@fig
    {\SUF@tochang@chap}
\setlength\SUF@tochang@tab
    {\SUF@tochang@chap}
\setlength\SUF@addto@tochang@chap
    {\SUF@tochang}
\setlength\SUF@addto@tochang@sec
    {\dimexpr(\SUF@addto@tochang@chap+\SUF@label@sec+.5em)}
\setlength\SUF@addto@tochang@subsec
    {\dimexpr(\SUF@addto@tochang@sec+\SUF@label@subsec+.5em)}
\setlength\SUF@addto@tochang@subsubsec
    {\dimexpr(\SUF@addto@tochang@subsec+\SUF@label@subsubsec+.5em)}
\setlength\SUF@addto@tochang@par
    {\dimexpr(\SUF@addto@tochang@subsubsec+\SUF@label@par+.5em)}
\setlength\SUF@addto@tochang@subpar
    {\dimexpr(\SUF@addto@tochang@par+\SUF@label@subpar+.5em)}
\setlength\SUF@addto@tochang@fig
    {\dimexpr(\SUF@addto@tochang@chap-\SUF@label@sec+\SUF@label@chap)}
\setlength\SUF@addto@tochang@tab
    {\dimexpr(\SUF@addto@tochang@chap-\SUF@label@sec+\SUF@label@chap)}}
\titlecontents{chapter}
  [\SUF@tochang@chap]
  {\addvspace{2ex}}
  {\hskip-\SUF@tochang@chap%
   \makebox[1em][l]{\thecontentspage}%
    \hskip\SUF@addto@tochang@chap%
      \makebox[\SUF@label@chap][l]{%
        \SUF@CHAP@contentslabel}\hspace*{1em}%
          \SUF@tocCHAP@font}
  {\hskip-\SUF@tochang@chap%
     \makebox[1em][l]{\thecontentspage}%
       \hskip\SUF@addto@tochang@chap\SUF@tocCHAP@font}
  {}
  [\addvspace{1ex}]
\ifsuftesi@ctocsec
\titlecontents*{section}[\SUF@tochang@chap]{}{%
  \SUF@SEC@contentslabel\adjtoclabelsep\SUF@tocSEC@font}{\SUF@tocSEC@font}{,
  \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{section}
  [\SUF@tochang@sec]
  {}
  {\hskip-\SUF@tochang@sec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@sec%
    \makebox[\SUF@label@sec][l]{\SUF@SEC@contentslabel}\hspace*{1em}%
       \SUF@tocSEC@font}
  {\hskip-\SUF@tochang@sec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@sec%
     \SUF@tocSEC@font}
  {}
\fi
\ifsuftesi@ctocsubsec
\titlecontents*{subsection}[\SUF@tochang@sec]{\SUF@sscorrect}{%
  \SUF@SUBSEC@contentslabel\adjtoclabelsep\SUF@tocSUBSEC@font}{\SUF@tocSUBSEC@font}{,
  \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subsection}
  [\SUF@tochang@subsec]
  {}
  {\hskip-\SUF@tochang@subsec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subsec%
    \makebox[\SUF@label@subsec][l]{\SUF@SUBSEC@contentslabel}\hspace*{1em}%
      \SUF@tocSUBSEC@font}
  {\hskip-\SUF@tochang@subsec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subsec%
     \SUF@tocSUBSEC@font}
  {}
\fi
\ifsuftesi@ctocsubsubsec
\titlecontents*{subsubsection}[\SUF@tochang@subsec]{\SUF@ssscorrect}{%
  \SUF@SUBSUBSEC@contentslabel\adjtoclabelsep%
  \SUF@tocSUBSUBSEC@font}{\SUF@tocSUBSUBSEC@font}{,
  \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subsubsection}
  [\SUF@tochang@subsubsec]
  {}
  {\hskip-\SUF@tochang@subsubsec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subsubsec%
    \makebox[\SUF@label@subsubsec][l]{\SUF@SUBSUBSEC@contentslabel}\hspace*{1em}%
      \SUF@tocSUBSUBSEC@font}
  {\hskip-\SUF@tochang@subsubsec%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subsubsec%
     \SUF@tocSUBSUBSEC@font}
  {}
\fi
\ifsuftesi@ctocpar
\titlecontents*{paragraph}[\SUF@tochang@subsubsec]{\SUF@pcorrect}{%
 \SUF@PAR@contentslabel\adjtoclabelsep%
 \SUF@tocPAR@font}{\SUF@tocPAR@font}{,
 \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{paragraph}
[\SUF@tochang@par]
{}
{\hskip-\SUF@tochang@par%
 \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@par%
 \makebox[\SUF@label@par][l]{\thecontentslabel}\hspace*{1em}%
   \SUF@tocPAR@font}
{\hskip-\SUF@tochang@par%
 \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@par%
   \SUF@tocPAR@font}
{}
\fi
\ifsuftesi@ctocsubpar
\titlecontents*{subparagraph}[\SUF@tochang@par]{\SUF@pcorrect}{%
 \SUF@SUBPAR@contentslabel\adjtoclabelsep%
 \SUF@tocSUBPAR@font}{\SUF@tocSUBPAR@font}{,
 \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subparagraph}
  [\SUF@tochang@subpar]
  {}
  {\hskip-\SUF@tochang@subpar%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subpar%
    \makebox[\SUF@label@subpar][l]{\thecontentslabel}\hspace*{1em}%
      \SUF@tocSUBPAR@font}
  {\hskip-\SUF@tochang@subpar%
    \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@subpar%
      \SUF@tocSUBPAR@font}
  {}
\fi
\titlecontents{figure}
  [\SUF@tochang@fig]
  {}
  {\hskip-\SUF@tochang@fig%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@fig%
     \makebox[\SUF@label@tab][l]{\thecontentslabel}\hspace*{1em}}
  {}
  {}
\titlecontents{table}
  [\SUF@tochang@tab]
  {}
  {\hskip-\SUF@tochang@tab%
   \makebox[1em][l]{\thecontentspage}\hskip\SUF@addto@tochang@tab%
     \makebox[\SUF@label@tab][l]{\thecontentslabel}\hspace*{1em}}
  {}
  {}
\else
\AtBeginDocument{%
\newlength\SUF@tocindent@chap
\newlength\SUF@tocindent@sec
\newlength\SUF@tocindent@subsec
\newlength\SUF@tocindent@subsubsec
\newlength\SUF@tocindent@par
\newlength\SUF@tocindent@subpar
\newlength\SUF@tocindent@fig
\newlength\SUF@tocindent@tab
\ifsuftesi@article
\setlength\SUF@tocindent@sec
    {\dimexpr(\SUF@label@chap+1.5em)}
\setlength\SUF@tocindent@subsec
    {\dimexpr(\SUF@tocindent@sec+\SUF@label@subsec+1em)}
\setlength\SUF@tocindent@subsubsec
    {\dimexpr(\SUF@tocindent@subsec+\SUF@label@subsubsec+1em)}
\setlength\SUF@tocindent@par
    {\dimexpr(\SUF@tocindent@subsubsec+\SUF@label@par+1em)}
\setlength\SUF@tocindent@subpar
    {\dimexpr(\SUF@tocindent@par+\SUF@label@subpar+1em)}
\setlength\SUF@tocindent@fig
    {\dimexpr(\SUF@label@chap+1.5em)}
\setlength\SUF@tocindent@tab
    {\dimexpr(\SUF@label@chap+1.5em)}
\else
\setlength\SUF@tocindent@chap
    {\dimexpr(\SUF@label@chap+1em)}
\setlength\SUF@tocindent@sec
    {\dimexpr(\SUF@tocindent@chap+\SUF@label@sec+1em)}
\setlength\SUF@tocindent@subsec
    {\dimexpr(\SUF@tocindent@sec+\SUF@label@subsec+1em)}
\setlength\SUF@tocindent@subsubsec
    {\dimexpr(\SUF@tocindent@subsec+\SUF@label@subsubsec+1em)}
\setlength\SUF@tocindent@par
    {\dimexpr(\SUF@tocindent@subsubsec+\SUF@label@par+1em)}
\setlength\SUF@tocindent@subpar
    {\dimexpr(\SUF@tocindent@par+\SUF@label@subpar+1em)}
\setlength\SUF@tocindent@fig
    {\dimexpr(\SUF@tocindent@chap+\SUF@label@sec-\SUF@label@chap)}
\setlength\SUF@tocindent@tab
    {\dimexpr(\SUF@tocindent@chap+\SUF@label@sec-\SUF@label@chap)}
\fi}
\titlecontents{chapter}
  [\SUF@tocindent@chap]
  {\addvspace{2ex}}
  {\hskip-\SUF@tocindent@chap%
    \makebox[\SUF@label@chap][l]{\SUF@CHAP@contentslabel}%
    \hspace*{1em}%
      \SUF@tocCHAP@font}
  {\hskip-\SUF@tocindent@chap%
      \SUF@tocCHAP@font}
  {\SUF@chaptitlerule\contentspage}
  [\addvspace{1ex}]
\ifsuftesi@ctocsec
\titlecontents*{section}[\SUF@tocindent@chap]{}{%
  \SUF@SEC@contentslabel\adjtoclabelsep\SUF@tocSEC@font}
  {\SUF@tocSEC@font}{, \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{section}
  [\SUF@tocindent@sec]
  {}
  {\hskip-\dimexpr(\SUF@label@sec+1em)%
    \makebox[\SUF@label@sec][l]{\SUF@SEC@contentslabel}\hspace*{1em}%
        \SUF@tocSEC@font}
  {\hskip-\dimexpr(\SUF@label@sec+1em)%
    \SUF@tocSEC@font}
  {\ifsuftesi@article\SUF@chaptitlerule%
       \else\SUF@titlerule\fi\contentspage}
\fi
\ifsuftesi@ctocsubsec
\titlecontents*{subsection}[\SUF@tocindent@sec]{\SUF@sscorrect}{%
  \SUF@SUBSEC@contentslabel\adjtoclabelsep\SUF@tocSUBSEC@font}
  {\SUF@tocSUBSEC@font}{, \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subsection}
  [\SUF@tocindent@subsec]
  {}
  {\hskip-\dimexpr(\SUF@label@subsec+1em)%
    \makebox[\SUF@label@subsec][l]{\SUF@SUBSEC@contentslabel}\hspace*{1em}%
      \SUF@tocSUBSEC@font}
  {\hskip-\dimexpr(\SUF@label@subsec+1em)%
    \SUF@tocSUBSEC@font}
  {\SUF@titlerule\contentspage}
\fi
\ifsuftesi@ctocsubsubsec
\titlecontents*{subsubsection}[\SUF@tocindent@subsec]{\SUF@ssscorrect}{%
  \SUF@SUBSUBSEC@contentslabel\adjtoclabelsep%
  \SUF@tocSUBSUBSEC@font}{\SUF@tocSUBSUBSEC@font}{,
  \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subsubsection}
  [\SUF@tocindent@subsubsec]
  {}
  {\hskip-\dimexpr(\SUF@label@subsubsec+1em)%
    \makebox[\SUF@label@subsubsec][l]{\SUF@SUBSUBSEC@contentslabel}\hspace*{1em}%
      \SUF@tocSUBSUBSEC@font}
  {\hskip-\dimexpr(\SUF@label@subsubsec+1em)%
    \SUF@tocSUBSUBSEC@font}
  {\SUF@titlerule\contentspage}
\fi
\ifsuftesi@ctocpar
\titlecontents*{paragraph}[\SUF@tocindent@subsubsec]{\SUF@pcorrect}{%
 \SUF@PAR@contentslabel\adjtoclabelsep%
 \SUF@tocPAR@font}{\SUF@tocPAR@font}{,
 \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{paragraph}
  [\SUF@tocindent@par]
  {}
  {\hskip-\dimexpr(\SUF@label@par+1em)%
    \makebox[\SUF@label@par][l]{\thecontentslabel}\hspace*{1em}%
      \SUF@tocPAR@font}
  {\hskip-\dimexpr(\SUF@label@par+1em)%
     \SUF@tocPAR@font}
  {\SUF@titlerule\contentspage}
\fi
\ifsuftesi@ctocsubpar
\titlecontents*{subparagraph}[\SUF@tocindent@par]{\SUF@pcorrect}{%
 \SUF@SUBPAR@contentslabel\adjtoclabelsep%
 \SUF@tocSUBPAR@font}{\SUF@tocSUBPAR@font}{,
 \thecontentspage.}[][\adjtocpagesep][]
\else
\titlecontents{subparagraph}
  [\SUF@tocindent@subpar]
  {}
  {\hskip-\dimexpr(\SUF@label@subpar+1em)%
    \makebox[\SUF@label@subpar][l]{\thecontentslabel}\hspace*{1em}%
      \SUF@tocSUBPAR@font}
  {\hskip-\dimexpr(\SUF@label@subpar+1em)%
     \SUF@tocSUBPAR@font}
  {\SUF@titlerule\contentspage}
\fi
\titlecontents{figure}
  [\SUF@tocindent@fig]
  {}
  {\hskip-\SUF@tocindent@fig%
    \makebox[\SUF@label@fig][l]{\thecontentslabel}\hspace*{1em}}
  {}
  {\SUF@titlerule\contentspage}
\titlecontents{table}
  [\SUF@tocindent@tab]
  {}
  {\hskip-\SUF@tocindent@tab%
    \makebox[\SUF@label@tab][l]{\thecontentslabel}\hspace*{1em}}
  {}
  {\SUF@titlerule\contentspage}
\fi
\ifSUF@partialtoc
  \titlecontents*{partialtocsection}[0cm]{}{%
   \@partialtocseclabel\adjtoclabelsep\@partialtocsecfont}
   {\@partialtocsecfont}{, \thecontentspage.}[][\adjtocpagesep][]
   \ifsuftesi@article
  \titlecontents*{partialtocsubsection}[0cm]{}{%
   \@partialtocsubseclabel\adjtoclabelsep\@partialtocsubsecfont}
   {\@partialtocsubsecfont}{, \thecontentspage.}[][\adjtocpagesep][]
   \else
  \titlecontents*{partialtocsubsection}[0cm]{\hskip.5em}{%
   \@partialtocsubseclabel\adjtoclabelsep\@partialtocsubsecfont}
   {\@partialtocsubsecfont}{, \thecontentspage.}[][\adjtocpagesep][]
   \fi
  \titlecontents*{partialtocsubsubsection}[0cm]{\hskip.5em}{%
   \@partialtocsubsubseclabel\adjtoclabelsep\@partialtocsubsubsecfont}
   {\@partialtocsubsubsecfont}{, \thecontentspage.}[][\adjtocpagesep][]
  \titlecontents*{partialtocparagraph}[0cm]{\hskip.5em}{%
   \@partialtocparlabelfont\adjtoclabelsep\@partialtocparfont}
   {\@partialtocparfont}{, \thecontentspage.}[][\adjtocpagesep][]
  \titlecontents*{partialtocsubparagraph}[0cm]{\hskip.5em}{%
   \@partialtocsubparlabelfont\adjtoclabelsep\@partialtocsubparfont}
   {\@partialtocsubparfont}{, \thecontentspage.}[][\adjtocpagesep][]
    \ifsuftesi@article
        \let\startsecpartialtoc\startcontents
        \let\startchappartialtoc\relax
      \else
        \let\startchappartialtoc\startcontents
        \let\startsecpartialtoc\relax
    \fi
  \newcommand{\printpartialtoc}{%
    \setcounter{tocdepth}{5}
     \contentsmargin{0cm}
      \@partialtocsize
       \@partialtocbeforespace
        \@partialtocbeforecode\par
         \ifsuftesi@article
         \printcontents{partialtoc}{2}{}
         \else
         \printcontents{partialtoc}{1}{}
         \fi
        \par\@partialtocaftercode
      \@partialtocafterspace
   }
\else
  \let\startchappartialtoc\relax
  \let\startsecpartialtoc\relax
  \def\printpartialtoc{%
    \ClassWarningNoLine{suftesi}%
      {To activate \string\printpartialtoc\MessageBreak
      load the 'partialtoc' option}}
\fi
\ifsuftesi@article
\renewcommand\tableofcontents{%
    \vspace{2ex}%
      \section*{\contentsname}%
        \@mkboth{\contentsname}{\contentsname}%
        \thispagestyle{empty}
        \ifsuftesi@twocolumntoc
          \begin{multicols}{2}
            \@starttoc{toc}%
          \end{multicols}
        \else
           \@starttoc{toc}%
        \fi
    \vspace{2ex}%
   }
\renewcommand\listoffigures{%
    \vspace{2ex}%
    \section*{\listfigurename}%
       \@mkboth{\listfigurename}{\listfigurename}%
     \thispagestyle{empty}
        \ifsuftesi@twocolumnlof
          \begin{multicols}{2}
            \@starttoc{lof}%
          \end{multicols}
        \else
           \@starttoc{lof}%
        \fi
    \vspace{2ex}%
    }
\renewcommand\listoftables{%
    \vspace{2ex}%
    \section*{\listtablename}%
        \@mkboth{\listtablename}{\listtablename}%
      \thispagestyle{empty}
        \ifsuftesi@twocolumnlot
          \begin{multicols}{2}
            \@starttoc{lot}%
          \end{multicols}
        \else
           \@starttoc{lot}%
        \fi
    \vspace{2ex}%
    }
\else
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
        \@mkboth{%
            \contentsname}
           {\contentsname}%
      \thispagestyle{empty}
        \ifsuftesi@twocolumntoc
          \begin{multicols}{2}
            \@starttoc{toc}%
          \end{multicols}
        \else
           \@starttoc{toc}%
        \fi
    \if@restonecol\twocolumn\fi
   }
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\listfigurename}%
              {\listfigurename}%
     \thispagestyle{empty}
        \ifsuftesi@twocolumnlof
          \begin{multicols}{2}
            \@starttoc{lof}%
          \end{multicols}
        \else
           \@starttoc{lof}%
        \fi
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \listtablename}%
         {\listtablename}%
     \thispagestyle{empty}
        \ifsuftesi@twocolumnlot
          \begin{multicols}{2}
            \@starttoc{lot}%
          \end{multicols}
        \else
           \@starttoc{lot}%
        \fi
    \if@restonecol\twocolumn\fi
    }
\fi
\newcommand{\partialtocsize}[1]{%
  \def\@partialtocsize{#1}}
\newcommand{\partialtocsecfont}[1]{%
  \def\@partialtocsecfont{#1}}
\newcommand{\partialtocsubsecfont}[1]{%
  \def\@partialtocsubsecfont{#1}}
\newcommand{\partialtocsubsubsecfont}[1]{%
  \def\@partialtocsubsubsecfont{#1}}
\newcommand{\partialtocparfont}[1]{%
 \def\@partialtocparfont{#1}}
\newcommand{\partialtocsubparfont}[1]{%
 \def\@partialtocsubparfont{#1}}
\newcommand{\partialtocseclabel}[1]{%
  \def\@partialtocseclabel{\begingroup#1\thecontentslabel~\endgroup}}
\newcommand{\partialtocsubseclabel}[1]{%
  \def\@partialtocsubseclabel{\begingroup#1\thecontentslabel~\endgroup}}
\newcommand{\partialtocsubsubseclabel}[1]{%
  \def\@partialtocsubsubseclabel{\begingroup#1\thecontentslabel~\endgroup}}
\newcommand{\partialtocparlabelfont}[1]{%
 \def\@partialtocparlabelfont{\begingroup#1\thecontentslabel~\endgroup}}
\newcommand{\partialtocsubparlabelfont}[1]{%
 \def\@partialtocsubparlabelfont{\begingroup#1\thecontentslabel~\endgroup}}
\newcommand{\partialtocbeforespace}[1]{%
  \def\@partialtocbeforespace{\vspace*{#1}}}
\newcommand{\partialtocafterspace}[1]{%
  \def\@partialtocafterspace{\vspace*{#1}}}
\newcommand{\partialtocbeforecode}[1]{%
  \def\@partialtocbeforecode{#1}}
\newcommand{\partialtocaftercode}[1]{%
  \def\@partialtocaftercode{#1}}
\partialtocsize{\footnotesize}
\partialtocsecfont{\itshape}
\partialtocsubsecfont{}
\partialtocsubsubsecfont{}
\partialtocparfont{}
\partialtocsubparfont{}
\partialtocseclabel{}
\partialtocsubseclabel{}
\partialtocsubsubseclabel{}
\partialtocparlabelfont{}
\partialtocsubparlabelfont{}
\partialtocbeforespace{0pt}
\partialtocafterspace{2\baselineskip}
\partialtocbeforecode{}
\partialtocaftercode{}
\newcommand{\partfont}[1]{\def\SUF@PART@font{#1}}
\newcommand{\chapfont}[1]{\def\SUF@CHAP@font{#1}}
\newcommand{\secfont}[1]{\def\SUF@SEC@font{#1}}
\newcommand{\subsecfont}[1]{\def\SUF@SUBSEC@font{#1}}
\newcommand{\subsubsecfont}[1]{\def\SUF@SUBSUBSEC@font{#1}}
\newcommand{\partnumfont}[1]{\def\SUF@PART@font{#1}}\partnumfont{}
\newcommand{\chapnumfont}[1]{\def\SUF@thechapter{#1}}
\newcommand{\secnumfont}[1]{\def\SUF@thesection{#1}}
\newcommand{\subsecnumfont}[1]{\def\SUF@thesubsection{#1}}
\newcommand{\subsubsecnumfont}[1]{\def\SUF@thesubsubsection{#1}}
\newcommand{\titlefont}[1]{\def\SUF@titlestyle{#1}\let\SUF@titlefont\relax}
\newcommand{\authorfont}[1]{\def\SUF@authorstyle{#1}\let\SUF@authorfont\relax}
\newcommand{\datefont}[1]{\def\SUF@datefont{#1}}
\newcommand{\tocpartname}[1]{\def\SUF@tocpartname{#1}}
  \tocpartname{\partname}
\newcommand{\tocpartfont}[1]{\def\SUF@tocPART@font{#1}}
\newcommand{\tocchapfont}[1]{\def\SUF@tocCHAP@font{#1}}
\newcommand{\tocsecfont}[1]{\def\SUF@tocSEC@font{#1}}
\newcommand{\tocsubsecfont}[1]{\def\SUF@tocSUBSEC@font{#1}}
\newcommand{\tocsubsubsecfont}[1]{\def\SUF@tocSUBSUBSEC@font{#1}}
\newcommand{\tocparfont}[1]{\def\SUF@tocPAR@font{#1}}
\newcommand{\tocsubparfont}[1]{\def\SUF@tocSUBPAR@font{#1}}
\newcommand{\tocpartnumfont}[1]{\def\SUF@tocPARTnum@font{#1}}\tocpartnumfont{}
\newcommand{\tocchapnumfont}[1]{%
  \def\SUF@CHAP@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\newcommand{\tocsecnumfont}[1]{%
  \def\SUF@SEC@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\newcommand{\tocsubsecnumfont}[1]{%
  \def\SUF@SUBSEC@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\newcommand{\tocsubsubsecnumfont}[1]{%
  \def\SUF@SUBSUBSEC@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\newcommand{\tocparnumfont}[1]{%
 \def\SUF@PAR@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\newcommand{\tocsubparnumfont}[1]{%
 \def\SUF@SUBPAR@contentslabel{\begingroup#1\thecontentslabel\endgroup}}
\tocparnumfont{}
\tocsubparnumfont{}
\newif\ifbreakintoc\breakintocfalse
\newif\ifbreakinbody\breakinbodytrue
\DeclareRobustCommand{\breakintoc}
   {\ifbreakintoc\\\else\fi}
\DeclareRobustCommand{\breakinbody}
  {\ifbreakinbody\\\else\fi}
\DeclareRobustCommand{\breakinbodyleft}
  {\ifbreakinbody\newline\else\fi}
\let\origtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
  \begingroup
    \breakintoctrue\breakinbodyfalse%
      \origtableofcontents
  \endgroup}
\DeclareRobustCommand{\headbreak}
  {\ifbreakintoc\\\else\fi}
\DeclareRobustCommand{\xheadbreak}
  {\ifbreakinbody\\\else\fi}
\DeclareRobustCommand{\yheadbreak}
  {\ifbreakinbody\newline\else\fi}
\RequirePackage{fancyhdr}
\newcommand{\versionstring}[1]{\def\version@string{#1}}
  \versionstring{Version of}
\ifSUF@draftdate
  \def\SUF@versionof{\footnotesize\texttt{\version@string{} \today}}
\else
  \let\SUF@versionof\relax
\fi
\renewcommand{\chaptermark}[1]{%
  \markboth{\chaptertitlename\ \SUF@HEAD@thechapter}{#1}}
  \ifsuftesi@article
    \renewcommand{\sectionmark}[1]{\markright{\SUF@HEAD@thesection.\ #1}}
      \else
    \renewcommand{\sectionmark}[1]{}
  \fi
\fancypagestyle{plain}{\fancyhf{}\fancyfoot[RE,LO]{\SUF@versionof}}
\fancypagestyle{empty}{\fancyhf{}\fancyfoot[RE,LO]{\SUF@versionof}}
\fancypagestyle{sufplain}{%
 \fancyhf{}%
 \fancyfoot[RE,LO]{\SUF@versionof}
 \fancyfoot[C]{\footnotesize\SUF@thepage}}
\fancypagestyle{centerheader}{%
  \fancyhf{}%
  \fancyfoot[RE,LO]{\SUF@versionof}
  \fancyhead[CO]{\footnotesize\breakinbodyfalse\SUF@rightmark}
  \fancyhead[CE]{\footnotesize\breakinbodyfalse\SUF@mark}
  \fancyfoot[C]{\footnotesize\SUF@thepage}}
\fancypagestyle{sufdefault}{%
  \fancyhf{}%
  \fancyfoot[RE,LO]{\SUF@versionof}
  \fancyhead[LE,RO]{\footnotesize\SUF@thepage}
  \fancyhead[LO]{\footnotesize\breakinbodyfalse\SUF@rightmark}
  \fancyhead[RE]{\footnotesize\breakinbodyfalse\SUF@mark}}
\ifsuftesi@article
  \ifsuftesi@authortitle
    \def\SUF@mark{\SUF@leftmark}
  \else
    \def\SUF@mark{\SUF@rightmark}
  \fi
\else
  \def\SUF@mark{\SUF@leftmark}
\fi
\def\SUF@leftrightmark{%
  \if@mainmatter\leftmark\else\rightmark\fi}
\AtBeginDocument{%
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footnoterule}{}
  \ifsuftesi@centerheader
   \pagestyle{centerheader}
    \else
     \ifsuftesi@sufplain
      \pagestyle{sufplain}
       \else
      \pagestyle{sufdefault}
     \fi
   \fi
}
\renewenvironment{quotation}
  {\list{}{\listparindent\parindent%
    \itemindent    \listparindent
    \SUF@quote@style
    \parsep    \z@ \@plus\p@}%
    \item\relax%
    \SUF@quotation@size%
    \noindent\ignorespaces}
  {\endlist}
\renewenvironment{quote}
  {\list{}{%
    \SUF@quote@style}%
    \item\relax%
    \SUF@quotation@size}% \ignorespaces?
  {\endlist}
\renewenvironment{verse}
  {\let\\\@centercr
    \list{}{\itemsep      \z@
      \itemindent   -1.5em%
      \listparindent\itemindent
      \rightmargin  \leftmargin
      \advance\leftmargin 1.5em}%
    \item\relax
    \SUF@quotation@size}
  {\endlist}
\ifSUF@fewfootnotes
\RequirePackage[perpage]{zref}
 \zmakeperpage{footnote}
\AtBeginDocument{%
\def\@fnsymbol#1{%
   \ifcase#1\or \TextOrMath\textasteriskcentered *\or
   \TextOrMath {\textasteriskcentered\textasteriskcentered}{**}\or
   \TextOrMath {\textasteriskcentered%
                \textasteriskcentered\textasteriskcentered}{***}\or
  \protect\ClassWarningNoLine{suftesi}%
  {Too many footnotes per page. Compile again or\MessageBreak
   remove the class option 'fewfootnote'}
  \fi
}%
}
\def\thefootnote{\@fnsymbol\c@footnote}%
\fi
\newcommand*\xfootnote[1][*]{%
  \protected@xdef\@thefnmark{#1}%
    \@footnotemark\@footnotetext}
\let\oldmarginpar\marginpar
\ifSUF@marginpar
  \def\SUF@mpsetup{%
    \itshape
      \footnotesize%
      \parindent=0pt \lineskip=0pt \lineskiplimit=0pt%
      \tolerance=2000 \hyphenpenalty=300 \exhyphenpenalty=300%
      \doublehyphendemerits=100000%
      \finalhyphendemerits=\doublehyphendemerits}
    \renewcommand{\marginpar}[1]{\oldmarginpar%
       [\SUF@mpsetup\raggedleft\hspace{0pt}{#1}]%
       {\SUF@mpsetup\raggedright\hspace{0pt}{#1}}}
\else
  \renewcommand\marginpar[2][]{}
\fi
\AtBeginDocument{%
\@ifpackageloaded{todonotes}{%
  \renewcommand{\@todonotes@drawMarginNoteWithLine}{%
    \begin{tikzpicture}[remember picture, overlay, baseline=-0.75ex]%
      \node [coordinate] (inText) {};%
    \end{tikzpicture}%
      \oldmarginpar[{% Draw note in left margin
      \@todonotes@drawMarginNote%
      \@todonotes@drawLineToLeftMargin%
      }]{% Draw note in right margin
      \@todonotes@drawMarginNote%
      \@todonotes@drawLineToRightMargin%
      }
    }
  }
{\relax}}
\ifsuftesi@collection
\newcounter{journalnumber}
\newcounter{journalvolume}
\newcounter{issue}
\newcounter{title}
\setcounter{title}{1}
\newcounter{article}
\setcounter{article}{0}
\setcounter{journalnumber}{0}
\setcounter{tocdepth}{0}
\def\journalname#1{\gdef\@journalname{#1}}
  \def\@journalname{\@latex@warning@no@line{%
    No \noexpand\journalname given}}
\def\journalvolume#1{\gdef\@journalvolume{#1}}
  \def\@journalvolume{\@latex@warning@no@line{%
    No \noexpand\journalvolume given}}
\def\journalnumber#1{\gdef\@journalnumber{#1}}
  \def\@journalnumber{\@latex@warning@no@line{%
    No \noexpand\journalnumber given}}
\def\issue#1{\gdef\@issue{#1}}
  \def\@issue{\@latex@warning@no@line{%
    No \noexpand\issue given}}
\def\journalyear#1{\gdef\@journalyear{#1}}
  \def\@journalyear{\@latex@warning@no@line{%
    No \noexpand\journalyear given}}
\def\journalwebsite#1{\gdef\@journalwebsite{\url{#1}}}
  \def\@journalwebsite{\@latex@warning@no@line{%
    No \noexpand\journalwebsite given}}
\def\thanks#1{\footnotemark\ \protected@xdef\@thanks{%
  \@thanks\protect\footnotetext[\the\c@footnote]{#1}}}
\def\fulljournal{\emph{\@journalname} \@journalnumber, %
  \@issue{} \@journalyear}
\def\issuename#1{\gdef\@issuename{#1}}
\def\collectiontitle#1{\gdef\@collectiontitle{#1}}
  \def\@collectiontitle{\@latex@warning@no@line{%
    No \noexpand\collectiontitle given}}
\def\collectioneditor#1{\gdef\@collectioneditor{#1}}
  \def\@collectioneditor{\@latex@warning@no@line{%
    No \noexpand\collectioneditor given}}
\renewcommand*{\title}[2][]{%
  \gdef\@headtitle{#1}\gdef\@title{#2}\markright{#1}}
    \edef\title{\noexpand\@dblarg
  \expandafter\noexpand\csname\string\title\endcsname}
    \def\@headtitle{--missing title--%
        \protect\ClassWarningNoLine{suftesi}{%
            No \string\title\space given \MessageBreak%
            See the class documentation for explanation}}
    \def\@title{--missing title--%
        \protect\ClassWarningNoLine{suftesi}{%
            No \string\title\space given\MessageBreak%
            See the class documentation for explanation}}
    \def\@author{--missing author--%
        \protect\ClassWarningNoLine{suftesi}{%
            No \string\author\space given\MessageBreak%
            See the class documentation for explanation}}
\newcommand*\l@title[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0ex \@plus\p@
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \advance\leftskip1em
      \hskip -\leftskip
      #1\nobreak%
    \ifsuftesi@dottedtoc\dotfill%
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
        \else
          \ifsuftesi@raggedtoc%
            \nobreak\hskip1em #2 \hfill\null\par
              \else
                \ifsuftesi@pagelefttoc
              \ClassError{suftesi}
                {\MessageBreak
                You can not use tocstyle=leftpage\MessageBreak
                  with structure=collection}
                {You can not use tocstyle=leftpage\MessageBreak
                  with structure=collection}
            \else
          \nobreak\hfill #2\par
        \fi
      \fi
    \fi
      \penalty\@highpenalty
    \endgroup
  \fi}
\newenvironment{article}
  {\begingroup
  \setcounter{section}{0}
  \setcounter{footnote}{0}
  \setcounter{figure}{0}
  \setcounter{table}{0}}
  {\label{end:\thearticle}
    \cleardoublepage
      \global\let\@thanks\@empty
    \endgroup}
\newcommand{\collectiontitlepage}{%
  \thispagestyle{empty}%
    \begingroup
     \centering
       \vspace*{\stretch{1}}

       {\SUF@chaptersize\@collectiontitle\par}
         \vskip5ex

       \@collectioneditor
       \vspace*{\stretch{3}}

    \endgroup
  \clearpage}
\def\frontispiece{\collectiontitlepage}
  \setcounter{tocdepth}{0}
  \renewcommand\thesection{%
          \@arabic\c@section}
  \renewcommand\thesubsection{%
          \thesection.\@arabic\c@subsection}
  \renewcommand\thesubsubsection{%
          \thesubsection.\@arabic\c@subsubsection}
  \renewcommand\theparagraph{%
          \thesubsubsection.\@arabic\c@paragraph}
  \renewcommand\thesubparagraph{%
          \theparagraph.\@arabic\c@subparagraph}
  \else
\fi
\def\isbn#1{\gdef\@isbn{#1}}
\def\@issn{\@latex@warning@no@line{%
  No \noexpand\isbn given}}
\def\doi#1{\gdef\@doi{#1}}
\def\@doi{\@latex@warning@no@line{%
  No \noexpand\doi given}}
\def\isbn#1{\gdef\@issn{#1}}
\def\@issn{\@latex@warning@no@line{%
  No \noexpand\isbn given}}
\renewcommand*{\title}[2][]{\gdef\@headtitle{#1}\gdef\@title{#2}}
\edef\title{\noexpand\@dblarg
  \expandafter\noexpand\csname\string\title\endcsname}
\def\@headtitle{--missing title--%
           \protect\ClassWarningNoLine{suftesi}{%
            No \string\title\space given \MessageBreak%
            See the class documentation for explanation}}
\def\@title{--missing title--%
           \protect\ClassWarningNoLine{suftesi}{%
            No \string\title\space given\MessageBreak%
            See the class documentation for explanation}}
\def\@author{--missing author--%
           \protect\ClassWarningNoLine{suftesi}{%
            No \string\author\space given\MessageBreak%
            See the class documentation for explanation}}
\ifsuftesi@collection
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@ % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks%
  \endgroup
   \setcounter{section}{0}%
   \global\let\and\relax
   \let\thanks\@gobble}
\AtBeginDocument{\def\@maketitle{%
  \refstepcounter{article}
  \SUF@chaptersize
   \SUF@authortitle@align
    \let\footnote\thanks
     \parindent=0pt
    {\SUF@second\par}%
   \label{begin:\thearticle}
   \@ifundefined{Hy@raisedlink}{\let\texorpdfstring\@firstoftwo}{%
    \xdef\@currentHref{title.\thearticle}%
     \Hy@raisedlink{\hyper@anchorstart{\@currentHref}\hyper@anchorend}%
    }%
   \csname toc@entry@\endcsname
    \begingroup%
    \let\thanks\@gobble
    \addcontentsline{toc}{title}{%
    {\SUF@tocAUT@font{\@author}}\texorpdfstring{\newline}{, }%
    {\SUF@tocTIT@font{\@headtitle}}}
    \endgroup%
    \par\nobreak\vspace{2ex}
    {\SUF@first\par%
    \vskip1.5cm}}%
    }
\else
\ifSUF@titlepage
  \renewcommand\maketitle{%
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \null\vfil
    \vskip 60\p@
    \begin{center}%
      {\SUF@first\par}%
      \vskip 3em%
      {\lineskip .75em%
        \SUF@second\par}%
        \vskip 1.5em%
      {\SUF@datefont\@date\par}%
    \end{center}\par
    \@thanks
    \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@date\@empty
  \global\let\date\relax
  \global\let\and\relax}
\else
\renewcommand\maketitle{\par
   \begingroup
     \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
     \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
             \hb@xt@1.8em{%
                 \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
     \if@twocolumn
       \ifnum \col@number=\@ne
         \@maketitle
       \else
         \twocolumn[\@maketitle]%
       \fi
     \else
       \newpage
       \global\@topnum\z@% Prevents figures from going at top of page.
       \@maketitle
     \fi
     \thispagestyle{plain}\@thanks
   \endgroup
   \setcounter{footnote}{0}%
   \global\let\thanks\relax
   \global\let\maketitle\relax
   \global\let\@maketitle\relax
   \global\let\@thanks\@empty
   \global\let\@date\@empty
   \global\let\date\relax
   \global\let\and\relax}
\def\@maketitle{%
   \newpage
   \null
   \vskip 2em%
   \begin{center}%
   \let \footnote \thanks
     {\SUF@first\par}%
     \vskip 1.5em%
     {\lineskip .5em%
       \SUF@second\par}%
     \vskip 1em%
     {\SUF@datefont\@date\par}%
   \end{center}%
   \par
   \vskip 1.5em}
  \fi
\fi
\newcommand{\Ctitle}[1]{\def\@Ctitle{#1}}
\newcommand{\Csubtitle}[1]{\def\@Csubtitle{#1}}
\newcommand{\Cauthor}[1]{\def\@Cauthor{#1}}
\newcommand{\Ceditor}[1]{\def\@Ceditor{#1}}
\newcommand{\Cfoot}[1]{\def\@Cfoot{#1}}
\newcommand{\Cpagecolor}[1]{\def\@Cpagecolor{#1}}
\newcommand{\Ccirclecolor}[1]{\def\@Ccirclecolor{#1}}
\newcommand{\Ctextcolor}[1]{\def\@Ctextcolor{#1}}
\newcommand{\Cfootcolor}[1]{\def\@Cfootcolor{#1}}
\Cauthor{}
\Ctitle{}
\Csubtitle{}
\Ceditor{}
\Cfoot{}
\Cpagecolor{gray!30}
\Ctextcolor{white}
\Cfootcolor{black}
\AtBeginDocument{
\@ifpackageloaded{tikz}{%
\newcommand\makecover[1][]{%
\begin{titlepage}
\begin{tikzpicture}[overlay,remember picture]
  \draw[draw=none,fill=\@Cpagecolor]
    (current page.north west) rectangle (current page.south east);
  \node[anchor=center,yshift=.22\paperwidth] at (current page.center) (c) {};
  \draw[draw=none,fill=gray,#1]
    (c)  circle (.38\paperwidth) ;
  \node[anchor=center] at (c) (author) {%
\parbox{.7\paperwidth}{%
  \centering
    \ifx\@Cauthor\@empty
     \else
       {\scshape\color{\@Ctextcolor}\@Cauthor\\}
       \vspace*{\baselineskip}
     \fi

     \ifx\@Ctitle\@empty
     \else
     {\Huge\bfseries\color{\@Ctextcolor}\@Ctitle\\[1ex]}
     \fi

    \ifx\@Csubtitle\@empty
     \else
       {\smallskip\Large\color{\@Ctextcolor}\@Csubtitle\\}
     \fi

    \ifx\@Ceditor\@empty
     \else
       {\vspace*{2\baselineskip}\color{\@Ctextcolor}\@Ceditor\\}
     \fi}
};
\ifx\@Cfoot\@empty\else
  \node[xshift=.5\paperwidth,yshift=1cm,
    align=center,text=\@Cfootcolor,anchor=south]
  at (current page.south west) {\@Cfoot};
\fi
\end{tikzpicture}
\end{titlepage}
}
}
{\def\makecover{\ClassError{suftesi}{\MessageBreak%
 ***********************************\MessageBreak
 * To use the \noexpand\makecover command\MessageBreak
 * load the 'tikz' package.\MessageBreak
 ************************************}{\MessageBreak%
 ***********************************\MessageBreak
 * To use the \noexpand\makecover command\MessageBreak
 * load the 'tikz' package.\MessageBreak
 ************************************}}}
}
\AtBeginDocument{%
\@ifpackagewith{frontespizio}{suftesi}{%
\ifsuftesi@periodical
  \Margini {5.5cm}{7cm}{4.5cm}{0cm}
    \else
\ifsuftesi@periodicalaureo
  \Margini {5.5cm}{7cm}{4.5cm}{0cm}
    \else
\ifsuftesi@compact
  \Margini {4.5cm}{7cm}{4.5cm}{0cm}
    \else
\ifsuftesi@compactaureo
  \Margini {4.5cm}{7cm}{4.5cm}{0cm}
    \else
\ifsuftesi@supercompact
  \Margini {4.5cm}{10cm}{6cm}{1cm}
    \else
\ifsuftesi@supercompactaureo
  \Margini {4.5cm}{10cm}{6cm}{1cm}
    \else
\ifsuftesi@pocketa
  \Margini {4.5cm}{10cm}{6cm}{1cm}
    \else
\ifsuftesi@pocketb
  \Margini {4.5cm}{10cm}{6cm}{1cm}
    \else
\ifsuftesi@pocketc
  \Margini {4.5cm}{10cm}{6cm}{1cm}
    \else
\fi\fi\fi\fi\fi\fi\fi\fi\fi}
{\@ifpackageloaded{frontespizio}{%
\ifsuftesi@periodical
  \Margini {1cm}{7cm}{5cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@periodicalaureo
  \Margini {1cm}{7cm}{5cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@compact
  \Margini {1cm}{7cm}{6cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@compactaureo
  \Margini {1cm}{7cm}{6cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@supercompact
  \Margini {1cm}{10cm}{8cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@supercompactaureo
  \Margini {1cm}{10cm}{8cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@pocketa
  \Margini {1cm}{10cm}{8cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@pocketb
  \Margini {1cm}{10cm}{8cm}{1cm}
  \Rientro{1cm}
    \else
\ifsuftesi@pocketc
  \Margini {1cm}{10cm}{8cm}{1cm}
  \Rientro{1cm}
    \else
\fi\fi\fi\fi\fi\fi\fi\fi\fi}
{\relax}}}
\newcommand{\colophon}[3][]{%
  \thispagestyle{empty}
  \null
    \vfill
     \def\next{#2}
         \ifx\next\@empty\else
            \noindent Copyright \copyright{} \the\year~#2\\[1ex]
          Tutti i diritti riservati
        \fi
  \vfill
  {\small\noindent Questo lavoro \`e stato composto con \LaTeX{}%
     \def\next{#1}
        \ifx\next\@empty\else su #1
      \fi usando la classe \textsf{suftesi} di
      Ivan Valbusa\index{Valbusa, Ivan}. #3\par}
      \cleardoublepage}
\newcommand{\bookcolophon}[2]{%
  \thispagestyle{empty}
  \null
    \vfill
            \noindent #1
  \vfill
  {\small\noindent #2\par}
      \cleardoublepage}
\newcommand{\artcolophon}[1]{%
\thispagestyle{empty}
  \null
    \vfill
  {\small\noindent #1\par}}
\newcommand{\finalcolophon}[1]{%
\thispagestyle{empty}
  \null\vspace*{\stretch{1}}
  \begin{center}
  \begin{minipage}{.5\textwidth}
  \centering\small #1
  \end{minipage}
  \end{center}
    \vspace*{\stretch{6}}}
\ifsuftesi@FSPL
\newcommand{\FSPLcolophon}[1][\the\year]{%
\begingroup
\thispagestyle{empty}
\null\vspace{\stretch{1}}
\noindent \hskip-.5em\cc #1 \@author%
\vskip1ex

\small\noindent This work is licensed under the Creative Commons
Attribution-NonCommercial-NoDerivs 3.0 Unported License.
To view a copy of this license,
visit http://creativecom mons.org/licenses/by-nc-nd/3.0/.

\endgroup

\begingroup
\footnotesize

\null\vspace{\stretch{1}}

\noindent Typeset with \LaTeX{} in collaboration with the Joint Project
\emph{Formal Style for PhD Theses with \LaTeX} (University of Verona,
Italy) using the \textsf{suftesi} class by Ivan Valbusa. The text face
is Palatino, designed by Hermann Zapf. The sans serif font is Iwona by
Janusz M.~Nowacki.

\endgroup

\clearpage}
\else
\def\FSPLcolophon{%
 \ClassError{suftesi}
   {\noexpand\FSPLcolophon is defined\MessageBreak
     only for the FSPL styles}
   {\noexpand\FSPLcolophon is defined\MessageBreak
     only for the FSPL styles}}
\fi
\newenvironment{bibliografia}{%
  \ifsuftesi@article
    \section*{\refname}
     \addcontentsline{toc}{section}{\refname}
  \else
    \chapter{\bibname}%
  \fi
      \normalfont \list{}{%
      \setlength{\itemindent}{-\parindent}
      \setlength{\leftmargin}{\parindent}
      \setlength{\labelwidth}{0pt}
      \setlength{\parsep}{\parskip}
      \let\makelabel}}
  {\endlist}
\newcommand{\losname}{Sigle}
\newcommand{\itlabel}[1]{\itshape\hbox to 6em{#1}}
\newenvironment{sigle}{%
  \chapter{\losname}
    \normalfont \list{}{%
      \setlength{\labelsep}{0.5em}
      \setlength{\itemindent}{0pt}
      \setlength{\leftmargin}{6em}
      \setlength{\labelwidth}{\leftmargin}
      \setlength{\listparindent}{\parindent}
      \setlength{\parsep}{\parskip}
      \let\makelabel\itlabel}}
  {\endlist}
\ifsuftesi@article
\def\chapterintro{%
\ClassError{suftesi}
  {Command \noexpand\chapterintro is undefined\MessageBreak
     using 'structure=article'}
  {Command \noexpand\chapterintro is undefined\MessageBreak
     using 'structure=article'}}
\else
\def\chapterintro{\@ifstar{%
  \@tempswafalse\@chapterintro}{\@tempswatrue\@chapterintro}}
\def\@chapterintro{\phantomsection
  \if@tempswa\section*{\SUF@fchapterintroname}\fi
  \addcontentsline{toc}{section}{\SUF@fchapterintroname}}
\newcommand{\chapterintroname}[1]{\def\SUF@fchapterintroname{#1}}
\chapterintroname{Introduzione}
\fi
\ifsuftesi@article
\renewcommand\frontmatter{\ClassError{suftesi}
  {Command \noexpand\frontmatter is undefined\MessageBreak
     using 'structure=article'}
  {Command \noexpand\frontmatter is undefined\MessageBreak
     using 'structure=article'}}
\renewcommand\mainmatter{\ClassError{suftesi}
  {Command \noexpand\mainmatter is undefined\MessageBreak
     using 'structure=article'}
  {Command \noexpand\mainmatter is undefined\MessageBreak
     using 'structure=article'}}
\renewcommand\backmatter{\ClassError{suftesi}
  {Command \noexpand\backmatter is undefined\MessageBreak
     using 'structure=article'}
  {Command \noexpand\backmatter is undefined\MessageBreak
     using 'structure=article'}}
\else
\renewcommand\frontmatter{\cleardoublepage\@mainmatterfalse}
\renewcommand\mainmatter{\cleardoublepage\@mainmattertrue}
\fi
\@ifpackageloaded{babel}
  {\AtBeginDocument{\RequirePackage{fixltxhyph}}}{}
\@ifpackageloaded{polyglossia}
  {\AtBeginDocument{\RequirePackage{fixltxhyph}}}{}
\let\hemph\emph
\unless\ifPDFTeX% if xetex or luatex
  \let\@afterindenttrue\@afterindentfalse
\fi
\frenchspacing
\endinput
%%
%% End of file `suftesi.cls'.
