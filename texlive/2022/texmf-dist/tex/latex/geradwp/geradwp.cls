%%
%% This is file `geradwp.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% geradwp.dtx  (with options: `class')
%% 
%% This is a stripped version of the original file.
%% 
%% Copyright 2022 GERAD, HEC Montreal
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% 
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008/05/04 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Benoit Hamel
%% <benoit.2.hamel@hec.ca>.
%% 
%% This work consists of the files geradwp.dtx, geradwp.ins,
%% geradwp.pdf and the derived files listed in the README file.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{geradwp}[2022/04/25 v1.1 Class for the Cahiers du GERAD series]
\RequirePackage{ifthen}

\newboolean{GD@isWebVersion}
\newboolean{GD@isPaperVersion}
\newboolean{GD@isPlainVersion}
\newboolean{GD@needsSmallHeadSep}
\newboolean{GD@isFinalImpression}
\newboolean{GD@isPostPublication}
\newboolean{GD@isSupplement}
\newboolean{GD@isRevised}
\newboolean{GD@needsminitabs}

\setboolean{GD@isWebVersion}{false}
\setboolean{GD@isPaperVersion}{true}
\setboolean{GD@isPlainVersion}{false}
\setboolean{GD@needsSmallHeadSep}{false}
\setboolean{GD@isFinalImpression}{false}
\setboolean{GD@isPostPublication}{false}
\setboolean{GD@isSupplement}{false}
\setboolean{GD@isRevised}{false}
\setboolean{GD@needsminitabs}{false}

\DeclareOption{gdweb}{%
\setboolean{GD@isWebVersion}{true}
\setboolean{GD@isPaperVersion}{false}
\setboolean{GD@isPlainVersion}{false}
\PassOptionsToClass{oneside}{article}
}
\DeclareOption{gdpaper}{%
\setboolean{GD@isWebVersion}{false}
\setboolean{GD@isPaperVersion}{true}
\setboolean{GD@isPlainVersion}{false}
\PassOptionsToClass{twoside}{article}
}
\DeclareOption{gdplain}{%
\setboolean{GD@isWebVersion}{false}
\setboolean{GD@isPaperVersion}{false}
\setboolean{GD@isPlainVersion}{true}
\PassOptionsToClass{oneside}{article}
}
\DeclareOption{gdsmallhead}{%
\setboolean{GD@needsSmallHeadSep}{true}
}
\DeclareOption{gdfinal}{%
\setboolean{GD@isFinalImpression}{true}
}
\DeclareOption{gdpostpub}{%
\setboolean{GD@isPostPublication}{true}
}
\DeclareOption{gdsupplement}{%
\setboolean{GD@isSupplement}{true}
}
\DeclareOption{gdrevised}{%
\setboolean{GD@isRevised}{true}
}
\DeclareOption{gdminitabs}{%
\setboolean{GD@needsminitabs}{true}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,10pt]{article}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{latexsym}
\RequirePackage{graphicx}
\RequirePackage{mathrsfs}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage[font={footnotesize,bf,sf}]{caption}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\ifthenelse{\boolean{GD@needsminitabs}}{%
\RequirePackage{float}
}{}

\captionsetup[table]{skip=5pt} % caption pkg setup

\newlength{\GD@authitemsep}
\newlength{\GD@authtopsep}
\newlength{\GD@affilitemsep}
\newlength{\GD@affiltopsep}
\newlength{\GD@titleminipage@hspace}
\newlength{\GD@coverpage@vspace}
\ifthenelse{\boolean{GD@isPlainVersion}}{%
\setlength{\GD@authitemsep}{0pt}
\setlength{\GD@authtopsep}{12pt}
\setlength{\GD@affilitemsep}{0pt}
\setlength{\GD@affiltopsep}{9pt}
}{%
\setlength{\GD@authitemsep}{8pt}
\setlength{\GD@authtopsep}{24pt}
\setlength{\GD@affilitemsep}{6pt}
\setlength{\GD@affiltopsep}{9pt}
}
\ifthenelse{\boolean{GD@isPaperVersion}}{%
\setlength{\GD@titleminipage@hspace}{240pt}
}{}
\ifthenelse{\boolean{GD@isWebVersion}}{%
\setlength{\GD@titleminipage@hspace}{227pt}
}{}

\ifthenelse{\boolean{GD@isWebVersion}}{%
\geometry{tmargin=1.5cm,%
bmargin=2cm,%
lmargin=3cm,%
rmargin=3cm,%
nofoot,%
headsep=30pt,%
includehead}
}{}
\ifthenelse{\boolean{GD@isPlainVersion}}{%
\geometry{tmargin=1.5cm,%
bmargin=2cm,%
lmargin=3cm,%
rmargin=3cm,%
headsep=30pt,%
includehead}
}{}
\ifthenelse{\boolean{GD@isPaperVersion}}{%
\geometry{tmargin=1.5cm,%
bmargin=2cm,%
lmargin=3cm,%
rmargin=2cm,%
nofoot,%
headsep=30pt,%
includehead}
}{}
\ifthenelse{\boolean{GD@needsSmallHeadSep}}{%
\headsep=15pt
}{}
\parindent=15pt
\parskip=7pt plus 1pt minus 1pt
\g@addto@macro\@floatboxreset\centering
\widowpenalty=10000
\clubpenalty=10000
\raggedbottom
\allowdisplaybreaks

\renewcommand{\section}{\@startsection {section}{1}{\z@}%
{-2ex \@plus -1ex \@minus -.2ex}%
{1ex \@plus.2ex}%
{\normalfont\Large\sffamily\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
{-1.25ex\@plus -1ex \@minus -.2ex}%
{.75ex \@plus .2ex}%
{\normalfont\large\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}%
{\z@}%
{-1.25ex\@plus -1ex \@minus -.2ex}%
{.75ex \@plus .2ex}%
{\normalfont\normalsize\sffamily\bfseries}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
{-1.25ex \@plus 1ex \@minus -.2ex}%
{-.5em \@plus -.1em}%
{\normalfont\normalsize\sffamily\bfseries}}
\setlength{\partopsep}{.5ex \@plus .1ex} %% to reduce spaces
\def\@listI{\leftmargin\leftmargini    %% above, between and under
\parsep .25ex \@plus .1ex  %% lists - itemize
\topsep .25ex \@plus .1ex  %% description - enumerate
\itemsep \parsep}
\let\@listi\@listI
\@listi

\ifthenelse{\boolean{GD@needsminitabs}}{%
\floatstyle{plaintop}
\restylefloat{table}
\let\oldtabular\tabular
\renewcommand{\tabular}{\footnotesize\oldtabular}
\let\oldtable\table
}{}

\newtheoremstyle{gerad}%
{3pt}% Space above
{3pt}% Space below
{}{}%
{\sffamily\bfseries}% head font
{.}% Punctuation
{.5em}% Space after theorem head
{}
\theoremstyle{gerad}

\renewenvironment{proof}[1][\proofname]{\par
\pushQED{\qed}%
\normalfont \topsep6\p@\@plus6\p@\relax
\trivlist
\item\relax
{\bfseries\sffamily
#1\@addpunct{.}}\hspace\labelsep\ignorespaces
}{%
\popQED\endtrivlist\@endpefalse
}

\newcommand{\gd@year}{}
\newcommand{\gd@month@fr}{}
\newcommand{\gd@month@en}{}
\newcommand{\gd@number}{}
\newcommand{\gd@title}{}
\newcommand{\gd@authors@short}{}
\newcommand{\gd@authors@copyright}{}
\newcommand{\gd@postpubcitation}{}
\newcommand{\gd@postpubcitation@url}{}
\newcommand{\gd@supplementname}{}
\newcommand{\gd@revised@year}{}
\newcommand{\gd@revised@month@fr}{}
\newcommand{\gd@revised@month@en}{}

\newcommand{\GD@cover}{%
\ifthenelse{\boolean{GD@isFinalImpression}}{}{%
\overfullrule=5pt
}

\pagestyle{empty}
\begin{titlepage}
\sffamily
\ifthenelse{\boolean{GD@needsSmallHeadSep}}{%
\vspace*{35pt}
}{}

{\noindent{\large\bfseries Les Cahiers du GERAD}\hfill ISSN:\quad
0711--2440}
\ifthenelse{\boolean{GD@isWebVersion}}{% 

\vspace*{54pt}
{\noindent\LARGE\bfseries \gd@title\par} %Title
\ifthenelse{\boolean{GD@isSupplement}}%
{{\noindent\LARGE\gd@supplementname\par}}{}
\vspace*{18pt}
{\noindent\Large\gd@authors@short\par}

\vfill 
}{}

\ifthenelse{\boolean{GD@isPaperVersion}}{%
\vspace*{\GD@coverpage@vspace}
}{}
\hspace*{\GD@titleminipage@hspace}
\begin{minipage}[c][5.4cm][c]{7cm}
{\ifthenelse{\boolean{GD@isWebVersion}}%
{\GDcover@minipagetable@web}%
{\GDcover@minipagetable@paper}%
}
\end{minipage}

\vfill

\ifthenelse{\boolean{GD@isPostPublication}}{%
\GDcover@bottom@postpub
}{%
\GDcover@bottom@regular
} 
\end{titlepage}
}

\newcommand{\GDcover@minipagetable@web}{%
\begin{tabular}{p{.5cm}|p{5.5cm}}
& \normalsize G--\gd@year--\gd@number
\ifthenelse{\boolean{GD@needsminitabs}}%
{\\*[10pt]}%
{\\*[8pt]}
& \normalsize\gd@month@en\ \gd@year
\ifthenelse{\boolean{GD@isRevised}}{%
\\
&\normalsize Revised: \gd@revised@month@en\ \gd@revised@year
}{}
\end{tabular}
}

\newcommand{\GDcover@minipagetable@paper}{%
\begin{tabular}{p{.5cm}|p{5.5cm}}
\multicolumn{2}{p{6.5cm}}{\normalsize\bfseries \gd@title
\ifthenelse{\boolean{GD@needsminitabs}}%
{\vspace*{12.5pt}}%
{\vspace*{10pt}}}\\
\ifthenelse{\boolean{GD@isSupplement}}%
{& \gd@supplementname\\*[10pt]}{}
& \normalsize\gd@authors@short \\ %Initials. Name
& \ifthenelse{\boolean{GD@needsminitabs}}%
{\\*[15pt]}%
{\\*[12pt]} 
& \normalsize G--\gd@year--\gd@number
\ifthenelse{\boolean{GD@needsminitabs}}%
{\\*[10pt]}%
{\\*[8pt]}
& \normalsize\gd@month@en\ \gd@year
\ifthenelse{\boolean{GD@isRevised}}{%
\\
&\normalsize Revised: \gd@revised@month@en\ \gd@revised@year
}{}
\end{tabular}
}

\newcommand{\GDcover@bottom@regular}{% 
\hrule
\smallskip

\noindent\begin{minipage}[t][][l]{7.5cm}
\scriptsize
La collection \textit{Les Cahiers du GERAD} est constitu\'{e}e des
travaux de recherche men\'{e}s par nos membres. La plupart de ces
documents de travail a \'{e}t\'{e} soumis \`{a} des revues avec
comit\'{e} de r\'{e}vision. Lorsqu'un document est accept\'{e} et
publi\'{e}, le pdf original est retir\'{e} si c'est n\'{e}cessaire et
un lien vers l'article publi\'{e} est ajout\'{e}.\\

\medskip
\scriptsize
\textbf{Citation sugg\'{e}r\'{e}e :} \gd@authors@short~(\gd@month@fr\
\gd@year). \gd@title,
\ifthenelse{\boolean{GD@isSupplement}}{\gd@supplementname .}{}
Rapport technique, Les Cahiers du GERAD G--
\gd@year--\gd@number, GERAD, HEC Montr\'{e}al, Canada.
\ifthenelse{\boolean{GD@isRevised}}%
{ Version r\'evis\'ee: \gd@revised@month@fr\ \gd@revised@year}{}\\

\textbf{Avant de citer ce rapport technique,} veuillez visiter notre
site Web (\url{https://www.gerad.ca/fr/papers/G-\gd@year-\gd@number})
afin de mettre \`a jour vos donn\'ees de r\'ef\'erence, s'il a \'et\'e
publi\'e dans une revue scientifique.\par
\end{minipage}
\hfill
\begin{minipage}[t][][l]{7.5cm}
\scriptsize
The series \textit{Les Cahiers du GERAD} consists of working papers
carried out by our members. Most of these pre-prints have been submitted
to peer-reviewed journals. When accepted and published, if necessary,
the original pdf is removed and a link to the published article is
added.\\ \\

\scriptsize
\textbf{Suggested citation:} \gd@authors@short~(\gd@month@en\ \gd@year).
\gd@title,
\ifthenelse{\boolean{GD@isSupplement}}{\gd@supplementname .}{}
Technical report, Les Cahiers du GERAD G--\gd@year--\gd@number,
GERAD, HEC Montr\'{e}al, Canada.
\ifthenelse{\boolean{GD@isRevised}}%
{ Revised version: \gd@revised@month@en\ \gd@revised@year}{}\\

\textbf{Before citing this technical report,} please visit our website
(\url{https://www.gerad.ca/en/papers/G-\gd@year-\gd@number}) to update
your reference data, if it has been published in a scientific journal.
\par
\end{minipage}

\bigskip
\hrule
\smallskip

\noindent\begin{minipage}[t][2.1cm][l]{7.5cm}
\scriptsize
La publication de ces rapports de recherche est rendue possible gr\^ace
au soutien de HEC Montr\'eal, Polytechnique Montr\'eal, Universit\'e
McGill, Universit\'e du Qu\'ebec \`a Montr\'eal, ainsi que du Fonds de
recherche du Qu\'ebec -- Nature et technologies.

\medskip
D\'ep\^ot l\'egal -- Biblioth\`eque et Archives nationales du Qu\'ebec,
\gd@year\\
\phantom{Depot legal} -- Biblioth\`eque et Archives Canada, \gd@year
\par
\end{minipage}
\hfill
\begin{minipage}[t][2.1cm][l]{7.5cm}
\scriptsize
The publication of these research reports is made possible
thanks to the support of HEC Montr\'eal, Polytechnique Montr\'eal,
McGill University, Universit\'e du Qu\'ebec \`a Montr\'eal, as well as
the Fonds de recherche du Qu\'ebec -- Nature et technologies.

\medskip
Legal deposit -- Biblioth\`eque et Archives nationales du Qu\'ebec,
\gd@year\\
\phantom{Legal deposit} -- Library and Archives Canada, \gd@year\par
\end{minipage}

\hrule
\smallskip

\noindent
\begin{minipage}[t][1cm][l]{7.5cm}
\begin{scriptsize}\raggedleft
\textbf{GERAD} HEC Montr\'eal

3000, chemin de la C\^ote-Sainte-Catherine

Montr\'eal (Qu\'ebec) Canada H3T 2A7\par
\end{scriptsize}
\end{minipage}
\hspace*{.35cm}\vrule\hfill
\begin{minipage}[t][1cm][l]{7.5cm}
\begin{scriptsize}
\textbf{T\'el.\,: 514 340-6053}

T\'el\'ec.\,: 514 340-5665

info@gerad.ca

www.gerad.ca\par
\end{scriptsize}
\end{minipage}

\bigskip
\hrule
}

\newcommand{\GDcover@bottom@postpub}{%
\hrule
\smallskip

\noindent
\begin{minipage}[t][][l]{7.5cm}
\scriptsize
La collection \textit{Les Cahiers du GERAD} est constitu\'{e}e des
travaux de recherche men\'{e}s par nos membres. La plupart de ces
documents de travail a \'{e}t\'{e} soumis \`{a} des revues avec comit\'e
de r\'{e}vision. Lorsqu'un document est accept\'{e} et publi\'{e}, le
pdf original est retir\'{e} si c'est n\'{e}cessaire et un lien vers
l'article publi\'{e} est ajout\'{e}.\par
\end{minipage}
\hfill
\begin{minipage}[t][][l]{7.5cm}
\scriptsize
The series \textit{Les Cahiers du GERAD} consists of working papers
carried out by our members. Most of these pre-prints have been submitted
to peer-reviewed journals. When accepted and published, if necessary,
the original pdf is removed and a link to the published article is
added.\par
\end{minipage}

\noindent
\begin{minipage}[t][][l]{\textwidth}
\footnotesize
\textbf{CITATION ORIGINALE / ORIGINAL CITATION}
\smallskip

\gd@postpubcitation\ \url{\gd@postpubcitation@url}.
\end{minipage}

\bigskip

\hrule
\smallskip

\noindent\begin{minipage}[t][2.1cm][l]{7.5cm}
\scriptsize
La publication de ces rapports de recherche est rendue possible gr\^ace
au soutien de HEC Montr\'eal, Polytechnique Montr\'eal, Universit\'e
McGill, Universit\'e du Qu\'ebec \`a Montr\'eal, ainsi que du Fonds de
recherche du Qu\'ebec -- Nature et technologies.

\medskip
D\'ep\^ot l\'egal -- Biblioth\`eque et Archives nationales du Qu\'ebec,
\gd@year\\
\phantom{Depot legal} -- Biblioth\`eque et Archives Canada, \gd@year
\par
\end{minipage}
\hfill
\begin{minipage}[t][2.1cm][l]{7.5cm}
\scriptsize
The publication of these research reports is made possible
thanks to the support of HEC Montr\'eal, Polytechnique Montr\'eal,
McGill University, Universit\'e du Qu\'ebec \`a Montr\'eal, as well as
the Fonds de recherche du Qu\'ebec -- Nature et technologies.

\medskip
Legal deposit -- Biblioth\`eque et Archives nationales du Qu\'ebec,
\gd@year\\
\phantom{Legal deposit} -- Library and Archives Canada, \gd@year\par
\end{minipage}

\hrule
\smallskip

\noindent
\begin{minipage}[t][1cm][l]{7.5cm}
\begin{scriptsize}\raggedleft
\textbf{GERAD} HEC Montr\'eal

3000, chemin de la C\^ote-Sainte-Catherine

Montr\'eal (Qu\'ebec) Canada H3T 2A7\par
\end{scriptsize}
\end{minipage}
\hspace*{.35cm}\vrule\hfill
\begin{minipage}[t][1cm][l]{7.5cm}
\begin{scriptsize}
\textbf{T\'el.\,: 514 340-6053}

T\'el\'ec.\,: 514 340-5665

info@gerad.ca

www.gerad.ca\par
\end{scriptsize}
\end{minipage}

\bigskip
\hrule
}

\newcommand{\GD@titlepage@begin}{% 
\ifthenelse{\boolean{GD@isWebVersion}}{%
\newpage\clearpage
}{%
\ifthenelse{\boolean{GD@isPaperVersion}}{%
\newpage\cleardoublepage
}{}
}
\parindent=0pt
\sffamily
{\LARGE\bfseries \gd@title\par} %Title
\ifthenelse{\boolean{GD@isSupplement}}%
{{\LARGE\gd@supplementname\par}
}{}
\begin{minipage}[t][10cm][l]{7.5cm} 
\vspace*{55pt}
}

\newcommand{\GD@titlepage@end}{%
\vfill
\end{minipage}
\vfill
{\bfseries \gd@month@en\ \gd@year}\\*
\ifthenelse{\boolean{GD@isRevised}}%
{Revised: \gd@revised@month@en\ \gd@revised@year \\}%
{}
{\bfseries Les Cahiers du GERAD}\\
{\bfseries G--\gd@year--\gd@number}\\
{\footnotesize Copyright \copyright\ \gd@year\ GERAD,
\gd@authors@copyright}
\vspace*{0.05cm}

\hrule
\smallskip

\noindent
\begin{minipage}[t][][l]{7.5cm}
\begin{scriptsize}
Les textes publi\'es dans la s\'erie des rapports de recherche
\textit{Les Cahiers du GERAD} n'engagent que la responsabilit\'e de
leurs auteurs. Les auteurs conservent leur droit d'auteur et leurs
droits moraux sur leurs publications et les utilisateurs s'engagent \`a
reconna\^{\i}tre et respecter les exigences l\'{e}gales associ\'{e}es
\`{a} ces droits. Ainsi, les utilisateurs:
\begin {itemize}
\item Peuvent t\'{e}l\'{e}charger et imprimer une copie de toute
publication du portail public aux fins d'\'{e}tude ou de recherche
priv\'{e}e;
\item Ne peuvent pas distribuer le mat\'{e}riel ou l'utiliser pour une
activit\'{e} \`{a} but lucratif ou pour un gain commercial;
\item Peuvent distribuer gratuitement l'URL identifiant la publication.
\end{itemize}
Si vous pensez que ce document enfreint le droit d'auteur, contactez-
nous en fournissant des d\'etails. Nous supprimerons imm\'{e}diatement
l'acc\`es au travail et enqu\^{e}terons sur votre demande.\par
\end{scriptsize}
\end{minipage}
\hfill
\begin{minipage}[t][][l]{7.5cm}
\begin{scriptsize}
The authors are exclusively responsible for the content of their
research papers published in the series \textit{Les Cahiers du GERAD}.
Copyright and moral rights for the publications are retained by the
authors and the users must commit themselves to recognize and abide the
legal requirements associated with these rights. Thus, users:
\begin{itemize}
\item May download and print one copy of any publication from the public
portal for the purpose of private study or research;
\item May not further distribute the material or use it for any
profit-making activity or commercial gain;
\item May freely distribute the URL identifying the publication.
\end{itemize}
If you believe that this document breaches copyright please contact us
providing details, and we will remove access to the work immediately and
investigate your claim.\par
\end{scriptsize}
\end{minipage}

\thispagestyle{empty}
\parindent=15pt
\newpage
}

\newcommand{\GD@plain@titlepage@begin}{%
\thispagestyle{empty}
\sffamily
{\sffamily\LARGE\bfseries\noindent\gd@title\par}
\ifthenelse{\boolean{GD@isSupplement}}%
{{\noindent\LARGE\gd@supplementname\par}}{}
}

\newcommand{\GD@plain@pagetitle@end}{%
\vspace*{12pt}
{\noindent\gd@month@en\ \gd@year}
\ifthenelse{\boolean{GD@isRevised}}%
{\\ {\noindent Revised: \gd@revised@month@en\ \gd@revised@year}}{}
\vspace*{30pt}
}

\newcommand{\GDcoverpagewhitespace}[1]{%
\setlength{\GD@coverpage@vspace}{#1}
}

\newcommand{\GDyear}[1]{%
\renewcommand{\gd@year}{#1}
}
\newcommand{\GDmonth}[2]{%
\renewcommand{\gd@month@fr}{#1}
\renewcommand{\gd@month@en}{#2}
}
\newcommand{\GDnumber}[1]{%
\renewcommand{\gd@number}{#1}
}
\newcommand{\GDtitle}[1]{%
\renewcommand{\gd@title}{#1}
}
\newcommand{\GDauthorsShort}[1]{%
\renewcommand{\gd@authors@short}{#1}
}
\newcommand{\GDauthorsCopyright}[1]{%
\renewcommand{\gd@authors@copyright}{#1}
}
\newcommand{\GDpostpubcitation}[2]{%
\renewcommand{\gd@postpubcitation}{#1}
\renewcommand{\gd@postpubcitation@url}{#2}
}
\newcommand{\GDsupplementname}[1]{%
\renewcommand{\gd@supplementname}{#1}
}
\newcommand{\GDrevised}[3]{%
\renewcommand{\gd@revised@month@fr}{#1}
\renewcommand{\gd@revised@month@en}{#2}
\renewcommand{\gd@revised@year}{#3}
}

\newcommand{\GDcoverpage}{%
\ifthenelse{\boolean{GD@isPlainVersion}}{}{\GD@cover}
}

\newenvironment{GDtitlepage}{
\ifthenelse{\boolean{GD@isPlainVersion}}%
{\GD@plain@titlepage@begin}%
{\GD@titlepage@begin} 
}{
\ifthenelse{\boolean{GD@isPlainVersion}}%
{\GD@plain@pagetitle@end}%
{\GD@titlepage@end} 
}

\newlist{GDauthlist}{itemize}{1}
\setlist[GDauthlist]{label={},%
left=0pt .. 0pt,%
itemsep=\GD@authitemsep,%
topsep=\GD@authtopsep}
\newlist{GDaffillist}{enumerate}{1}
\setlist[GDaffillist]{label=\textsuperscript{\emph{\alph*}},%
ref=\textsuperscript{\emph{\alph*}},%
wide,%
left=0pt .. 1em,%
itemsep=\GD@affilitemsep,%
topsep=\GD@affiltopsep}
\newlist{GDemaillist}{itemize}{1}
\setlist[GDemaillist]{label={},%
left=0pt .. 0pt,%
itemsep=0pt,%
parsep=0pt}
\newcommand{\GDrefsep}{\textsuperscript{,\,}}
\newcommand{\GDauthitem}[1]{%
\ifthenelse{\boolean{GD@isPlainVersion}}{%
\item {\sffamily\large\bfseries #1}
}{%
\item {\Large\bfseries #1}
}
}
\newcommand{\GDaffilitem}[2]{\item \label{#1}{\itshape #2}}
\newcommand{\GDemailitem}[1]{\item {\small\ttfamily #1}}

\newcommand{\GDabstracts}{%
\ifthenelse{\boolean{GD@isPlainVersion}}{}{%
\setcounter{page}{2}
\renewcommand{\thepage}{\roman{page}}
\pagestyle{fancy}
\fancyhead[LO]{%
\textcolor{gray}{\sffamily{\,} Les Cahiers du GERAD}\hfill
\textcolor{gray}{\sffamily G--\gd@year--\gd@number}%
\ifthenelse{\boolean{GD@isSupplement}}%
{\textcolor{gray}{\sffamily\ -- \itshape \gd@supplementname}}%
{} %
\ifthenelse{\boolean{GD@isRevised}}%
{\textcolor{gray}{\sffamily\ -- \itshape Revised}}%
{}\hfill
\textcolor{gray}{\sffamily\thepage}
{\large\strut}\color{gray}{\hrule}
}
\fancyhead[LE]{%
\textcolor{gray}{\sffamily{\,}\thepage}\hfill
\textcolor{gray}{\sffamily G--\gd@year--\gd@number}%
\ifthenelse{\boolean{GD@isSupplement}}%
{\textcolor{gray}{\sffamily\ -- \itshape \gd@supplementname}}%
{} %
\ifthenelse{\boolean{GD@isRevised}}%
{\textcolor{gray}{\sffamily\ -- \itshape Revised}}%
{}\hfill
\textcolor{gray}{\sffamily Les Cahiers du GERAD}
{\large\strut}\color{gray}{\hrule}
}
\fancyhead[C]{}
\fancyhead[R]{}
\fancyfoot{} 
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\rmfamily
\vspace*{5pt} 
}
}

\newenvironment{GDabstract}[1]{%
\paragraph{#1 : }
}{%
\ifthenelse{\boolean{GD@isPlainVersion}}{}{\vspace*{2cm}}
}

\newenvironment{GDacknowledgements}{%
\ifthenelse{\boolean{GD@isPlainVersion}}{%
\paragraph{Acknowledgements: }
}{%
\vfill
\hrule
\smallskip
\paragraph{Acknowledgements: }
}
}{}

\newcommand{\GDarticlestart}{%
\ifthenelse{\boolean{GD@isPlainVersion}}{}{%
\newpage
\setcounter{page}{1}
\renewcommand{\thepage}{\arabic{page}}
\baselineskip=12.5pt
\rmfamily
}
}

\newcommand{\GDtitre}[1]{\GDtitle{#1}}
\newcommand{\GDmois}[2]{\GDmonth{#1}{#2}}
\newcommand{\GDannee}[1]{\GDyear{#1}}
\newcommand{\GDnumero}[1]{\GDnumber{#1}}
\newcommand{\GDauteursCourts}[1]{\GDauthorsShort{#1}}
\newcommand{\GDauteursCopyright}[1]{\GDauthorsCopyright{#1}}
\newcommand{\GDpageCouverture}{\GDcoverpage}
\newenvironment{GDpagetitre}{
\ifthenelse{\boolean{GD@isPlainVersion}}%
{\GD@plain@titlepage@begin}%
{\GD@titlepage@begin} 
}{
\ifthenelse{\boolean{GD@isPlainVersion}}%
{\GD@plain@pagetitle@end}%
{\GD@titlepage@end} 
}

\endinput
%%
%% End of file `geradwp.cls'.
