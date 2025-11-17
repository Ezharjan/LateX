%%
%% This is file `uwa-pif.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uwa-pif.dtx  (with options: `class')
%% 
%% Copyright 2019 Anthony Di Pietro
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Anthony Di Pietro.
%% 
%% This work consists of the files uwa-pif.dtx, uwa-pif.ins, and
%% uwa-pif-example.tex and the derived files uwa-pif.cls and uwa-pif.pdf.
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{uwa-pif}
    [2021/09/28 1.0.1 UWA Participant Information Form]
\newif\ifuwapif@hreo
\newif\ifuwapif@closing
\newif\ifuwapif@calibrifont
\DeclareOption{hreo}{
        \uwapif@hreotrue
}
\DeclareOption{nohreo}{
        \uwapif@hreofalse
}
\DeclareOption{closing}{
        \uwapif@closingtrue
}
\DeclareOption{noclosing}{
        \uwapif@closingfalse
}
\DeclareOption{calibri}{
        \uwapif@calibrifonttrue
}
\DeclareOption{nocalibri}{
        \uwapif@calibrifontfalse
}
\DeclareOption{draft}{
        \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{final}{
        \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{leqno}{
        \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{fleqn}{
        \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{footer}{
        \PassOptionsToPackage{\CurrentOption}{uwa-letterhead}
}
\DeclareOption{nofooter}{
        \PassOptionsToPackage{\CurrentOption}{uwa-letterhead}
}
\DeclareOption{arial}{
        \PassOptionsToPackage{\CurrentOption}{uwa-letterhead}
}
\DeclareOption{noarial}{
        \PassOptionsToPackage{\CurrentOption}{uwa-letterhead}
}
\DeclareOption*{
        \ClassWarning{uwa-pif}{Unknown option '\CurrentOption'}
}
\ExecuteOptions{
       hreo,
       closing,
       calibri
}
\ProcessOptions\relax
\PassOptionsToClass{
        a4paper,
        11pt
}{article}
\LoadClass{article}
\RequirePackage{uwa-letterhead}
\RequirePackage[no-math]{fontspec}
\sffamily
\ifuwapif@calibrifont
        \setmainfont{Calibri}
        \setsansfont{Calibri}
\fi
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{anyfontsize}
\RequirePackage{setspace}
\RequirePackage[sf]{titlesec}
\titleformat{\section}{\color{black}\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\color{black}\bfseries\small}{\thesubsection}{1em}{}
\titlespacing*{\section}{0pt}{-0.07em}{-0.07em}
\titlespacing*{\subsection}{0pt}{-0.07em}{-0.07em}
\setcounter{secnumdepth}{0}
\RequirePackage[hyperref]{xcolor}
\definecolor{UWAPIFBody}{RGB}{31, 73, 125}
\renewcommand*{\uwalh@footermbdp}{459}
\renewcommand*{\uwalh@footerphone}{+61 8 6488 3703}
\renewcommand*{\uwalh@mobile}{+61 000 000 000}
\renewcommand*{\uwalh@footeremail}{humanethics@uwa.edu.au}
\renewcommand*{\mbdp}[1]{\renewcommand*{\uwalh@mbdp}{#1}}
\renewcommand*{\university}[1]{\renewcommand*{\uwalh@university}{#1}}
\renewcommand*{\phone}[1]{\renewcommand*{\uwalh@phone}{#1}}
\renewcommand*{\mobile}[1]{}
\renewcommand*{\email}[1]{\renewcommand*{\uwalh@email}{#1}}
\newcommand*{\uwapif@project}{}
\newcommand*{\uwapif@researchers}{}
\newcommand*{\project}[1]{\renewcommand*{\uwapif@project}{#1}}
\newcommand{\researcher}[2]{#1 & (#2) \\}
\newcommand{\researchers}[1]{\renewcommand{\uwapif@researchers}{%
        \begin{tabular}{@{}ll@{}}
                #1
        \end{tabular}%
}}
\newcommand{\uwapif@checkfields}{%
        \uwalh@checkfield{\uwapif@project}{\noexpand\project}
        \uwalh@checkfield{\uwapif@researchers}{\noexpand\researchers}
}
\newcommand{\uwapif@maketitle}{%
        \uwapif@checkfields{}%
        \vspace{-1\baselineskip}\vspace{0.450cm}%
        \begin{center}%
                \fontsize{16}{16.96}\selectfont%
                \textcolor{black}{\textbf{Participant Information Form}}%
                \normalsize%
        \end{center}%
        \vspace{-1\baselineskip}\vspace{0.935cm}
        \textcolor{black}{\textbf{Project title:}} \uwapif@project{} \\
        \vspace{-2\baselineskip}\vspace{0.477cm} \\
        \textcolor{black}{\textbf{Name of Researchers:}} \\
        \vspace{-2\baselineskip}\vspace{1.025cm} \\
        \uwapif@researchers{}
        \vspace{-0.045cm}
}
\newlength{\uwapif@closingvspace}
\setlength{\uwapif@closingvspace}{2.6cm}
\newcommand{\uwapif@makeclosing}{%
        \vspace{\uwapif@closingvspace}%
        {%
                \color{black}%
                Sincerely,

                \@author
        }
}
\newlength{\uwapif@hreovspace}
\setlength{\uwapif@hreovspace}{2.55cm}
\newcommand{\uwapif@hreostatement}{%
        Approval to conduct this research has been provided by the University
        of Western Australia, in accordance with its ethics review and
        approval procedures. Any person considering participation in this
        research project, or agreeing to participate, may raise any questions
        or issues with the researchers at any time. In addition, any person
        not satisfied with the response of researchers may raise ethics issues
        or concerns, and may make any complaints about this research project
        by contacting the Human Ethics office at UWA on
        \href{tel:+61-8-6488-4703}{(08)~6488~4703} or by emailing to
        \href{mailto:humanethics@uwa.edu.au}{humanethics@uwa.edu.au}. All
        research participants are entitled to retain a copy of any Participant
        Information Form and/or Participant Consent Form relating to this
        research project.
}
\newcommand{\uwapif@makehreostatement}{%
        \vspace{\uwapif@hreovspace}%
        \hrule%
        \begin{minipage}{\textwidth}
                {%
                        \begin{spacing}{1.17}
                        \fontsize{9}{10.8}\selectfont\color{black}%
                        \uwapif@hreostatement{}%
                        \end{spacing}
                }%
        \end{minipage}
}
\newcommand*{\uwapif@bodyfont}{%
        \sffamily\fontsize{11}{15.5}\selectfont\color{UWAPIFBody}%
}
\AtBeginDocument{%
        \uwapif@bodyfont{}%
        \uwapif@maketitle{}%
}
\AtEndDocument{%
        \ifuwapif@closing\uwapif@makeclosing{}\fi%
        \ifuwapif@hreo\uwapif@makehreostatement{}\fi%
}
\endinput
%%
%% End of file `uwa-pif.cls'.
