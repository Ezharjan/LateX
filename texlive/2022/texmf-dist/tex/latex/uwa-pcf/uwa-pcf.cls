%%
%% This is file `uwa-pcf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uwa-pcf.dtx  (with options: `class')
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
%% This work consists of the files uwa-pcf.dtx, uwa-pcf.ins, and
%% uwa-pcf-example.tex and the derived files uwa-pcf.cls and uwa-pcf.pdf.
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{uwa-pcf}
    [2021/09/28 1.0.1 UWA Participant Consent Form]
\newif\ifuwapcf@hreo
\newif\ifuwapcf@signature
\DeclareOption{hreo}{
        \uwapcf@hreotrue
}
\DeclareOption{nohreo}{
        \uwapcf@hreofalse
}
\DeclareOption{signature}{
        \uwapcf@signaturetrue
}
\DeclareOption{nosignature}{
        \uwapcf@signaturefalse
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
        \ClassWarning{uwa-pcf}{Unknown option '\CurrentOption'}
}
\ExecuteOptions{
        hreo,
        signature
}
\ProcessOptions\relax
\PassOptionsToClass{
        a4paper,
        11pt
}{article}
\LoadClass{article}
\RequirePackage[regular]{uwa-letterhead}
\setlength{\parskip}{0.83\baselineskip}
\RequirePackage[no-math]{fontspec}
\uwalh@arial
\ifuwalh@arialfont
        \setmainfont{Arial}
        \setsansfont{Arial}
\fi
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{anyfontsize}
\setlength{\uwalh@addresstop}{2.07cm}
\renewcommand{\uwalh@addressblock}{%
        \begin{textblock*}%
                {\uwalh@addresswidth}(\uwalh@addressleft, \uwalh@addresstop)
                \begin{minipage}[t]{\uwalh@addresswidth}
                        \color{UWAPCFBody}%
                        \sffamily\fontsize{9}{10.4}\selectfont%
                        \@author{} \\
                        \uwalh@school{}, M\uwalh@mbdp{} \\
                        \uwalh@university{} \\
                        \uwalh@address{} \\
                        \noblanks[q]{\uwalh@phone}%
                        Tel: \href{tel:\thestring}{\uwalh@phone} \\
                        Email: \href{mailto:\uwalh@email}{\uwalh@email} \\
                        \href{https://\uwalh@website/}{\uwalh@website}
                \end{minipage}
        \end{textblock*}%
}
\RequirePackage[sf]{titlesec}
\titleformat{\section}{\color{black}\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\color{black}\bfseries\small}{\thesubsection}{1em}{}
\titlespacing*{\section}{0pt}{-0.07em}{-0.07em}
\titlespacing*{\subsection}{0pt}{-0.07em}{-0.07em}
\setcounter{secnumdepth}{0}
\RequirePackage[hyperref]{xcolor}
\definecolor{UWAPCFBody}{RGB}{77, 77, 79}
\renewcommand*{\uwalh@footermbdp}{459}
\renewcommand*{\uwalh@footerphone}{+61 8 6488 3703}
\renewcommand*{\uwalh@mobile}{+61 000 000 000}
\renewcommand*{\uwalh@footeremail}{humanethics@uwa.edu.au}
\renewcommand*{\mbdp}[1]{\renewcommand*{\uwalh@mbdp}{#1}}
\renewcommand*{\university}[1]{\renewcommand*{\uwalh@university}{#1}}
\renewcommand*{\phone}[1]{\renewcommand*{\uwalh@phone}{#1}}
\renewcommand*{\mobile}[1]{}
\renewcommand*{\email}[1]{\renewcommand*{\uwalh@email}{#1}}
\newcommand*{\uwapcf@project}{}
\newcommand*{\project}[1]{\renewcommand*{\uwapcf@project}{#1}}
\newcommand{\uwapcf@checkfields}{%
        \uwalh@checkfield{\uwapcf@project}{\noexpand\project}
}
\newcommand{\uwapcf@maketitle}{%
        \uwapcf@checkfields{}%
        \vspace{-1\parskip}\vspace{-0.310cm}%
        \begin{center}%
                \uwalh@arial%
                \fontsize{16}{16.96}\selectfont%
                \textbf{Participant Consent Form}%
                \normalsize%
        \end{center}%
        \vspace{-1\parskip}\vspace{-0.120cm}%
        \begin{center}%
                \uwalh@arial%
                \fontsize{12}{12.72}\selectfont%
                \uwapcf@project{}%
                \normalsize%
        \end{center}%
        \uwalh@arial%
        \fontsize{10}{11.6}\selectfont%
        \vspace{-1\parskip}\vspace{0.860cm}%
}
\newlength{\uwapcf@sig@vspace}
\setlength{\uwapcf@sig@vspace}{1.3cm}
\newlength{\uwapcf@sig@rulewidth}
\setlength{\uwapcf@sig@rulewidth}{0.0227cm}
\newlength{\uwapcf@sig@offset}
\setlength{\uwapcf@sig@offset}{0.095cm}
\newlength{\uwapcf@sig@labeloffset}
\setlength{\uwapcf@sig@labeloffset}{0.008cm}
\newlength{\uwapcf@sig@labelvspace}
\setlength{\uwapcf@sig@labelvspace}{-0.0675cm}
\newlength{\uwapcf@sig@gutter}
\setlength{\uwapcf@sig@gutter}{3cm}
\newlength{\uwapcf@sig@siglinelength}
\setlength{\uwapcf@sig@siglinelength}{4.905cm}
\newlength{\uwapcf@sig@datelinelength}
\setlength{\uwapcf@sig@datelinelength}{2.946cm}
\newcommand{\uwapcf@makesignature}{%
        \vspace{\uwapcf@sig@vspace}%
        \hspace{\uwapcf@sig@offset}%
        \begin{minipage}[t]{\uwapcf@sig@siglinelength}
                \rule{\textwidth}{\uwapcf@sig@rulewidth} \\
                \vspace{-1\baselineskip}\vspace{\uwapcf@sig@labelvspace} \\
                \hspace*{\uwapcf@sig@labeloffset}%
                Participant signature
        \end{minipage}%
        \hspace{\uwapcf@sig@gutter}%
        \begin{minipage}[t]{\uwapcf@sig@datelinelength}
                \rule{\textwidth}{\uwapcf@sig@rulewidth} \\
                \vspace{-1\baselineskip}\vspace{\uwapcf@sig@labelvspace} \\
                \hspace*{\uwapcf@sig@labeloffset}%
                Date
        \end{minipage}%
}
\newlength{\uwapcf@hreo@vspace}
\setlength{\uwapcf@hreo@vspace}{1.843cm}
\newcommand*{\uwapcf@hreo@font}{%
        \uwalh@arial%
        \fontsize{9}{10.4}\selectfont%
        \color{black}%
        \bfseries\itshape%
}
\newlength{\uwapcf@hreo@parvspace}
\setlength{\uwapcf@hreo@parvspace}{0.5\baselineskip}
\newcommand{\uwapcf@hreo@statement}{%
        \begin{minipage}{\textwidth}
        Approval to conduct this research has been provided by the
        University of Western Australia, in accordance with its ethics
        review and approval procedures. Any person considering
        participation in this research project, or agreeing to
        participate, may raise any questions or issues with the
        researchers at any time.
        \end{minipage}

        \vspace*{\uwapcf@hreo@parvspace}

        \begin{minipage}{\textwidth}
        In addition, any person not satisfied with the response of
        researchers may raise ethics issues or concerns, and may make
        any complaints about this research project by contacting the
        Human Ethics office at UWA on
        \href{tel:+61-8-6488-4703}{(08)~6488~4703} or by emailing to
        \href{mailto:humanethics@uwa.edu.au}{humanethics@uwa.edu.au}.
        \end{minipage}

        \vspace*{\uwapcf@hreo@parvspace}

        \begin{minipage}{\textwidth}
        All research participants are entitled to retain a copy of any
        Participant Information Form and/or Participant Consent Form
        relating to this research project.
        \end{minipage}
}
\newcommand{\uwapcf@makehreostatement}{%
        \vspace{\uwapcf@hreo@vspace} \\
        \begin{minipage}{\textwidth}
                {%
                        \uwapcf@hreo@font{}%
                        \uwapcf@hreo@statement{}%
                }%
        \end{minipage}
}
\newcommand*{\uwapcf@bodyfont}{%
        \sffamily%
        \fontsize{11}{15.5}\selectfont%
        \color{UWAPCFBody}%
}
\AtBeginDocument{%
        \uwapcf@bodyfont{}%
        \uwapcf@maketitle{}%
}
\AtEndDocument{%
        \ifuwapcf@signature\uwapcf@makesignature{}\fi%
        \ifuwapcf@hreo\uwapcf@makehreostatement{}\fi%
}
\newcommand{\theparticipant}{%
        \begin{minipage}[t]{9.415cm}
                \vspace*{0.048cm}%
                \rule{\textwidth}{0.0227cm}%
        \end{minipage}%
}
\endinput
%%
%% End of file `uwa-pcf.cls'.
