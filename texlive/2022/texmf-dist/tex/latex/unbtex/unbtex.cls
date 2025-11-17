%%
%% UnBTeX: A class for bachelor, master, and doctoral thesis at the
%% University of Brasilia (UnB), Brazil
%% Version 1.1.3 2022/09/04
%% Copyright (C) 2021-2022 by Henrique C. Ferreira <hcferreira@unb.br>
%%
%% This class file may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3 of this license
%% or (at your option) any later version. The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2005/12/01 or later.
%%
%% This package consists of the following source file:  
%% unbtex.cls 
%% Template files:
%% unbtex-example.pdf, unbtex-example.tex and files within unbtex-example directory
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unbtex}[2022/09/04 v1.1.3 Modelo da Universidade de Brasília baseado em abnTeX2]

% ---
% Repassa todos os parâmetros a classe abntex2,
% https://www.ctan.org/pkg/abntex2
% ---
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}
% ---

% ------------------------------------------------------------------------
% Configurações básicas
% ------------------------------------------------------------------------

% ---
% Pacotes básicos
% ---
\RequirePackage[T1]{fontenc}		% Seleção de códigos de fonte.
\RequirePackage[utf8]{inputenc}		% Codificação do documento (conversão automática dos acentos)
\RequirePackage{stix2}              % Fonte para o texto e equações
                                    % Utilizada pelo IEEE, Elsevier, AMS, APS, AIP, ACS...
\RequirePackage{helvet}             % Fonte utilizada para os títulos do trabalho
                                    % Próxima do padrão da UnB http://www.marca.unb.br/introducao.php
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{subcaption}         % Permite fazer subfiguras
\RequirePackage{icomma}             % Configura casas decimais separadas por vírgula
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{microtype} 			% Para melhorias de justificação
\RequirePackage{multirow}           % Para combinar linhas nas tabelas
% ---

% ---
% Compila lista de siglas de siglas e abreviaturas e lista de símbolos
% ---
\RequirePackage[refpage]{nomencl}   % Para gerar lista de siglas e abreviações e lista de símbolos
\newcommand{\makenomencl}{
\makenomenclature
\def\pagedeclaration##1{\dotfill\hyperlink{page.##1}{\nobreakspace##1}\par}
    \renewcommand{\nomname}{\listadesiglasname}
\renewcommand{\nomgroup}[1]{
\ifthenelse{\equal{##1}{B}}{\chapter*{\hspace*{-\leftmargin}\listadesimbolosname}}{}}
}
% ---

% ---
% Pacotes matemáticos
% ---
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}  % melhorias nas equações
% Fonte para fonte tipográfica mathscr
% https://sites.math.washington.edu/~lee/Writing/typesetting-script.pdf
\RequirePackage{mathrsfs}
% ---

% ---
% Cores verde e azul UnB
% http://www.marca.unb.br/arquivosdigitais/files/guia_pratico/guia_pratico.pdf
% ---
\RequirePackage[dvipsnames,table]{xcolor}
\definecolor{verdeunb}{cmyk}{1,0,1,0.2}
\definecolor{azulunb}{cmyk}{1,0.65,0,0.35}

% Cores nos títulos
\renewcommand{\tocheadstart}{}
\renewcommand{\ABNTEXchapterfont}{\bfseries\color{verdeunb}\sffamily}
\renewcommand{\ABNTEXsubsectionfont}{}

% Cores das linhas de todas as tabelas:
\arrayrulecolor{verdeunb}

% Define comando \source
\RequirePackage[font={small}, margin=0cm, justification=centering]{caption}
\newcommand{\source}[1]{\captionsetup{singlelinecheck=false,justification=justified}\caption*{\footnotesize \noindent Fonte: {#1}}}
% ---

% ---
% Configurações do texto
% ---
% Tamanho do recuo da primeira linha do parágrafo
\setlength{\parindent}{1.3cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip

% configuração do cabeçalho das páginas
\pagestyle{myheadings} % cabeçalho com linha e numeração da página
%\setlength{\normalrulethickness}{0pt} % retira a linha do cabeçalho

% Retira espaço extra entre as frases.
\frenchspacing

% Alterando o espaçamento entre linhas do ambiente verbatim
\def\verbatim@font{\linespread{1}\small\ttfamily}

% Corrige falha do abntex2 nos anexos e apêndices
\renewcommand{\PRIVATEapendiceconfig}[2]{%
\setboolean{abntex@apendiceousecao}{true}%
\renewcommand{\appendixname}{#1}
\ifthenelse{\boolean{ABNTEXsumario-abnt-6027-2012}}{
\renewcommand{\appendixtocname}{\texorpdfstring{\MakeTextUppercase{#2}}{#2}}
}{%
\renewcommand{\appendixtocname}{#2}}
\renewcommand{\appendixpagename}{#2}
\switchchapname{#1}
\renewcommand*{\cftappendixname}{#1 \space}
}
% ---

% ---
% Pacotes para algoritmos
% ---
\RequirePackage{algorithm} 
\RequirePackage{algpseudocode}
% ---

% ---
% Configurações do pacote hyperref
% ---
% https://ctan.org/pkg/hyperref
\hypersetup{
     	%pagebackref=true,
		%pdftitle={\@title}, 
		%pdfauthor={\@author},
        %pdfpagemode=None,
        pdfstartview=FitH,
        breaklinks=true, 
		colorlinks=true,
    	allcolors=azulunb,
    	linktocpage,
		bookmarksdepth=4
}
% ---

% ---
% Insere códigos de programação
% ---
\RequirePackage{listings}
% https://ctan.org/pkg/listings

% Julia (Linguagem não reconhecida automaticamente pelo pacote listings)
\lstdefinelanguage{Julia}%
  {morekeywords={abstract,break,case,catch,const,continue,do,else,elseif,%
      end,export,false,for,function,immutable,import,importall,if,in,%
      macro,module,otherwise,quote,return,switch,true,try,type,typealias,%
      using,while},%
   sensitive=true,%
   alsoother={\$},%
   morecomment=[l]\#,%
   morecomment=[n]{\#=}{=\#},%
   morestring=[s]{"}{"},%
   morestring=[m]{'}{'},%
}[keywords,comments,strings]%

\lstset{%
    language         = Julia,
    basicstyle       = \ttfamily,
    keywordstyle     = \bfseries\color{blue},
    stringstyle      = \color{magenta},
    commentstyle     = \color{ForestGreen},
    showstringspaces = false
}

% Python
\lstset{
	language = Python,
	basicstyle=\linespread{1}\ttfamily\small,
    numberstyle=\footnotesize,
    numbers=left,
    backgroundcolor=\color{gray!10},
    frame=single,
    tabsize=2,
    rulecolor=\color{black!30},
    title=\lstname,
    escapeinside={\%*}{*)},
    breaklines=true,
    breakatwhitespace=true,
    framextopmargin=2pt,
    framexbottommargin=2pt,
    extendedchars=true,
    inputencoding=utf8,
    literate={á}{{\'a}}1 {ã}{{\~a}}1 {é}{{\'e}}1 {ç}{{\c{c}}}1 {â}{{\^a}}1 {õ}{{\~o}}1 {ú}{{\'u}}1 {ó}{{\'o}}1 {í}{{\'i}}1 {Í}{{\'I}}1 
}

\definecolor{mygreen}{RGB}{28,172,0} % color values Red, Green, Blue
\definecolor{mylilas}{RGB}{170,55,241}
% Matlab
\lstset{language=Matlab,%
    %basicstyle=\color{red},
    breaklines=true,%
    morekeywords={matlab2tikz},
    keywordstyle=\color{blue},%
    morekeywords=[2]{1}, keywordstyle=[2]{\color{black}},
    identifierstyle=\color{black},%
    stringstyle=\color{mylilas},
    commentstyle=\color{mygreen},%
    showstringspaces=false,%without this there will be a symbol in the places where there is a space
    numbers=left,%
    numberstyle={\tiny \color{black}},% size of the numbers
    numbersep=9pt, % this defines how far the numbers are from the text
    emph=[1]{for,end,break},emphstyle=[1]\color{red}, %some words to emphasise
    %emph=[2]{word1,word2}, emphstyle=[2]{style},    
}
% ---

% ---
% Definição de ambientes definição, teorema, exemplo, demonstração, etc.
% ---
\RequirePackage{mdframed}
% https://www.ctan.org/pkg/mdframed

\theoremstyle{definition}
\mdfdefinestyle{plainSty}{hidealllines=true,backgroundcolor=verdeunb!10}
\newmdtheoremenv[style=plainSty]{theorem}{\thname}[chapter]
\newmdtheoremenv[style=plainSty]{lemma}{\lmname}[chapter]
\newmdtheoremenv[style=plainSty]{proposition}{\prname}[chapter]
\newmdtheoremenv[style=plainSty]{corollary}{\crname}[chapter]

\theoremstyle{definition}
\mdfdefinestyle{defnSty}{hidealllines=true,backgroundcolor=azulunb!10}
\newmdtheoremenv[style=defnSty]{definition}{\dfname}[chapter]
\newmdtheoremenv[style=defnSty]{assumption}{\asptname}[chapter]
\newmdtheoremenv[style=defnSty]{example}{\epname}[chapter]
\newmdtheoremenv[style=defnSty]{exercise}{\ecname}[chapter]
\newmdtheoremenv[style=defnSty]{problem}{\pbname}[chapter]

\theoremstyle{remark}
\let\proof\relax
\let\endproof\relax
\newmdtheoremenv[linecolor=azulunb,linewidth=0.5mm,hidealllines=false]{remark}{\rmname}[chapter]

\newtheoremstyle{myproof}{\topsep}{\topsep}{}{}{\bfseries}{}{ }{\thmname{#1} \thmnote{#3}}
\theoremstyle{myproof}
\let\proof\relax
\let\endproof\relax
\newmdtheoremenv[linecolor=verdeunb,linewidth=0.5mm,hidealllines=false]{proof}{\proofname.}
\AtEndEnvironment{proof}{\hfill$\square$}

\newcommand{\thmnameen}{
\newcommand{\thname}{Theorem}
\newcommand{\lmname}{Lemma}
\newcommand{\prname}{Proposition}
\newcommand{\crname}{Corollary}
\newcommand{\asptname}{Assumption}
\newcommand{\dfname}{Definition}
\newcommand{\epname}{Example}
\newcommand{\ecname}{Exercise}
\newcommand{\pbname}{Problem}
\newcommand{\rmname}{Remark}
\renewcommand{\proofname}{Proof}}

\newcommand{\thmnamebr}{
\newcommand{\thname}{Teorema}
\newcommand{\lmname}{Lema}
\newcommand{\prname}{Proposição}
\newcommand{\crname}{Corolário}
\newcommand{\dfname}{Definição}
\newcommand{\asptname}{Hipótese}
\newcommand{\epname}{Exemplo}
\newcommand{\ecname}{Exercício}
\newcommand{\pbname}{Problema}
\newcommand{\rmname}{Observação}
\renewcommand{\proofname}{Demonstração}}
% ---

% ------------------------------------------------------------------------
% Informações do trabalho
% ------------------------------------------------------------------------

% Autores
\newcommand{\autori}[3][]{\def\autorinome{#2}\def\autorisobrenome{#3}}
\newcommand{\autorii}[3][]{\def\autoriinome{#2}\def\autoriisobrenome{#3}}

% Orientadores
\renewcommand{\orientador}[3][]{\def\orienttitulo{#1}\def\orientnome{#2}\def\orientsobrenome{#3}}
\renewcommand{\coorientador}[3][]{\def\coorienttitulo{#1}\def\coorientnome{#2}\def\coorientsobrenome{#3}}

% Tipo de trabalho
\newcommand{\tipocurso}[1]{\def\imprimircurso{#1}}

% Instituição
\renewcommand{\instituicao}[3][]{\def\instituicaoi{#1}\def\instituicaoii{#2}\def\instituicaoiii{#3}}

% data
\newcommand{\dia}[1]{\def\imprimirdia{#1}}
\newcommand{\mes}[1]{\def\imprimirmes{#1}}
\newcommand{\ano}[1]{\def\imprimirano{#1}}

% Membros da banca
\newcommand{\membrodabancai}[1]{\def\membrodabancainome{#1}}
\newcommand{\membrodabancaii}[1]{\def\membrodabancaiinome{#1}}
\newcommand{\membrodabancaiii}[1]{\def\membrodabancaiiinome{#1}}
\newcommand{\membrodabancaiv}[1]{\def\membrodabancaivnome{#1}}
\newcommand{\membrodabancav}[1]{\def\membrodabancavnome{#1}}
\newcommand{\membrodabancaifuncao}[1]{\def\membrodabancaifuncaonome{#1}}
\newcommand{\membrodabancaiifuncao}[1]{\def\membrodabancaiifuncaonome{#1}}
\newcommand{\membrodabancaiiifuncao}[1]{\def\membrodabancaiiifuncaonome{#1}}
\newcommand{\membrodabancaivfuncao}[1]{\def\membrodabancaivfuncaonome{#1}}
\newcommand{\membrodabancavfuncao}[1]{\def\membrodabancavfuncaonome{#1}}

% Palavras-chave
\newcommand{\pchavei}[1]{\def\pchaveinome{#1}}
\newcommand{\kwordi}[1]{\def\kwordinome{#1}}
\newcommand{\pchaveii}[1]{\def\pchaveiinome{#1}}
\newcommand{\kwordii}[1]{\def\kwordiinome{#1}}
\newcommand{\pchaveiii}[1]{\def\pchaveiiinome{#1}}
\newcommand{\kwordiii}[1]{\def\kwordiiinome{#1}}
\newcommand{\pchaveiv}[1]{\def\pchaveivnome{#1}}
\newcommand{\kwordiv}[1]{\def\kwordivnome{#1}}

% Código da ficha catalográfica
\newcommand{\numerocutter}[1]{\def\imprimircutter{#1}}

% ---
% Imprime capa
% ---
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \AddToShipoutPicture*{\BackgroundPic}
    \vspace*{7.5cm}
    {\bfseries\sffamily\Large \instituicaoi \par \instituicaoii} \par
    \abntex@ifnotempty{\instituicaoiii}{{\bfseries\sffamily\Large\instituicaoiii}}
        \begin{center}
    \vfill
    \bfseries\sffamily\LARGE\imprimirtitulo
    \end{center}
    \vfill
    {\large\autorinome\ \autorisobrenome
    \par
    \abntex@ifnotempty{\autoriinome}{\autoriinome\ \autoriisobrenome}}
    \vfill
    \begin{center}
    \color{white}{\sffamily\large\expandafter\MakeUppercase\expandafter \imprimirtipotrabalho \par \expandafter\MakeUppercase\expandafter\imprimircurso \\ \vspace{0.5cm} \imprimirlocal \par \imprimirano}
    \end{center}
  \end{capa}
}

% Figura de fundo da capa
\RequirePackage{eso-pic}
\newcommand\BackgroundPic{%
	\put(0,0){%
		\parbox[b][\paperheight]{\paperwidth}{%
			\vfill
			\centering
			\includegraphics[width=\paperwidth,height=\paperheight,%
				keepaspectratio]{capa_fundo.pdf}%
			\vfill
		}
	}
}
% ---

% ---
% Imprime folha de rosto 
% ---
\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
    {\bfseries\sffamily\Large \instituicaoi \par \instituicaoii} \par
    \abntex@ifnotempty{\instituicaoiii}{{\bfseries\sffamily\Large\instituicaoiii}}
    \vfill\vfill\vfill

\begin{center}
\color{verdeunb}\bfseries\sffamily\LARGE\ifthenelse{\equal{\imprimirtituloestrangeiro}{}}{\imprimirtitulo}{\imprimirtituloestrangeiro}
\end{center}

\vfill

{\large\autorinome\ \autorisobrenome
    \par
    \abntex@ifnotempty{\autoriinome}{\autoriinome\ \autoriisobrenome}}

\vfill\vfill

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  {\SingleSpacing
  \IfStrEq*{\languagename}{english}{
  \begin{otherlanguage*}{brazil}
  \imprimirpreambulo
  \end{otherlanguage*}}{
  \imprimirpreambulo}
  }
  \end{minipage}%
  \vfill
}%

{\large \orientadorname: \orienttitulo\ \orientnome\ \orientsobrenome\par}

\abntex@ifnotempty{\coorientnome}{%
  {\large\coorientadorname: \coorienttitulo\ \coorientnome\ \coorientsobrenome}%
}%

\vfill\vfill

{\sffamily\large\imprimirlocal \par\imprimirano}
\end{center}
}

\makeatother
% ---

% ---
% Imprime ficha catalográfica
% ---
\RequirePackage{xstring}

\renewcommand{\fichacatalografica}{
    \thispagestyle{empty}{
\setlength{\fboxsep}{10pt}
\vspace*{\fill}
{\small
{\SingleSpacing
\begin{center}
\fbox{\begin{minipage}[t][7.5cm]{12.5cm}
\begin{tabular}{p{1.25cm} p{10.25cm}}
& \autorisobrenome, \autorinome. \\
\StrChar{\autorisobrenome}{1}\imprimircutter\StrChar{\imprimirtitulo}{1}[\SUBtemp]\MakeLowercase{\SUBtemp}
& \hspace{0.5cm} \StrDel{\imprimirtitulo}{\\} ~/ \autorinome\ \autorisobrenome; \ifthenelse{\equal{\autoriinome}{}}{}{\autoriinome\ \autoriisobrenome;} \MakeLowercase\orientadorname\ \orientnome\ \orientsobrenome \ifthenelse{\equal{\coorientnome}{}}{.}{;~\MakeLowercase\coorientadorname\ \coorientnome\ \coorientsobrenome.}  \texttt{-{}-} \imprimirlocal, \imprimirano. \\ 
& \hspace{0.5cm}\thelastpage~p. \\
& \\
& \hspace{0.5cm} \imprimirtipotrabalho\ (\imprimircurso)\ \texttt{-{}-} \instituicaoi, \imprimirano. \\
& \\
& \hspace{0.5cm} 1. \pchaveinome. 2. \pchaveiinome. 3. \pchaveiiinome. \ifthenelse{\equal{\pchaveivnome}{}}{}{4. \pchaveivnome.} \ifthenelse{\equal{\autoriinome}{}}{\ifthenelse{\equal{\coorientnome}{}}{I. \orientsobrenome, \orientnome, orient. II. Título}{I. \orientsobrenome, \orientnome, orient. II. \coorientsobrenome, \coorientnome, coorient. III. Título}}{\ifthenelse{\equal{\coorientnome}{}}{I. \autoriisobrenome, \autoriinome. II. \orientsobrenome, \orientnome, orient. III. Título}{I. \autoriisobrenome, \autoriinome. II. \orientsobrenome, \orientnome, orient. III. \coorientsobrenome, \coorientnome, coorient. IV. Título}} 
\end{tabular}
\end{minipage}}
\end{center}
}}
\newpage
	}
}
% ---

% ---
% Imprime folha de aprovação
% ---
\makeatletter

\newcommand{\imprimirfolhadeaprovacao}{
\begin{folhadeaprovacao}
\begin{center}
    {\bfseries\sffamily\Large \instituicaoi \par \instituicaoii} \par
    \abntex@ifnotempty{\instituicaoiii}{{\bfseries\sffamily\Large\instituicaoiii}}
    \vfill\vfill

\begin{center}
\color{verdeunb}\bfseries\sffamily\Large\imprimirtitulo
\end{center}

\vfill

{\large\autorinome\ \autorisobrenome
    \par
    \abntex@ifnotempty{\autoriinome}{\autoriinome\ \autoriisobrenome}}

\vfill

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  {\SingleSpacing
  \IfStrEq*{\languagename}{english}{
  \begin{otherlanguage*}{brazil}
  \imprimirpreambulo
  \end{otherlanguage*}}{
  \imprimirpreambulo}
  }
  \end{minipage}%
  \vfill
}%

\raggedright { Trabalho aprovado. \imprimirlocal, \imprimirdia\ de \imprimirmes\ de \imprimirano:}
{
   \assinatura{\textbf{\membrodabancainome} \\ \membrodabancaifuncaonome} 
   \assinatura{\textbf{\membrodabancaiinome} \\ \membrodabancaiifuncaonome} 
   \assinatura{\textbf{\membrodabancaiiinome} \\ \membrodabancaiiifuncaonome} 
   \abntex@ifnotempty{\membrodabancaivnome}{\assinatura{\textbf{\membrodabancaivnome} \\ \membrodabancaivfuncaonome}}
   \abntex@ifnotempty{\membrodabancavnome}{\assinatura{\textbf{\membrodabancavnome} \\ \membrodabancavfuncaonome}}}
\vfill      
   \begin{center}
    {\sffamily\large\imprimirlocal
    \par \imprimirano}
  \end{center}
\end{center}
\end{folhadeaprovacao}
}

\makeatother
% ---

% Correção para o pacote microtype
\makeatletter
\long\def\MT@prot@l#1{%
	\MT@get@prot{#1}{left}%
	\leavevmode
	#1}
\def\MT@prot@group@@{%
	\catcode`\\=0
	\catcode`\^^M=10
	\makeatletter
	{\expandafter\MT@prot@l\expandafter
		{\expandafter\scantokens\expandafter{\the\MT@toks\noexpand}}}%
	\endgroup}
\makeatother