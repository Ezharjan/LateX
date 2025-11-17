% This is file `letgut.cls',
% generated with the Emacs Org-babel utility.
%
% The original source file is letgut.org
%
% -------:| ----------------------------------------------------
%  letgut:| Class for the newsletter “La Lettre GUTenberg”
%  Author:| Association GUTenberg
%  E-mail:| secretariat@gutenberg.eu.org
% License:| Released under the LaTeX Project Public License
%         | v1.3c or later
%     See:| http://www.latex-project.org/lppl.txt
%
% Copyright (C) 1994-2022 by Association GUTenberg
%                   <secretariat@gutenberg.eu.org>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License (LPPL), either
% version 1.3c of this license or (at your option) any later
% version.  The latest version of this license is in the file:
%
% http://www.latex-project.org/lppl.txt
%
% This work is “maintained” (as per LPPL maintenance status)
% by Association GUTenberg.
%
% \RequirePackage[
%   , check-declarations
%   , enable-debug
%   , backend=luatex
% ]{expl3}
\NeedsTeXFormat{LaTeX2e}[2020-10-01]
\ExplSyntaxOn
\tl_const:Nn \c__letgut_Lettre_tl { \emph{ Lettre } }
\tl_const:Nn \c__letgut_gutenberg_tl { GUTenberg }
\tl_const:Nn \c__letgut_Lettre_gutenberg_tl {
  \c__letgut_Lettre_tl~\c_space_tl \c__letgut_gutenberg_tl
}
\tl_const:Nn \c__letgut_la_lettre_gutenberg_tl {
  la~ \c__letgut_Lettre_gutenberg_tl
}
\tl_const:Nn \c__letgut_La_lettre_gutenberg_tl {
  \text_titlecase_first:n \c__letgut_la_lettre_gutenberg_tl
}
\ExplSyntaxOff
\ProvidesExplClass{letgut}
{2022-03-17}
{0.9}
{
  Class for the newsletter “The GUTenberg Letter”
}
\prop_gput:Nnn \g_msg_module_type_prop { letgut } { Class }
\msg_new:nnn{letgut}{Wrong~engine}{
  The~ letgut~ class~ requires~ LuaTeX.\\\\
  You~ must~ change~ your~ typesetting~ engine~ to~
  “lualatex”~ instead~ of~ “latex”~ or~ “pdflatex”
  or~ “xelatex”.
}
\msg_new:nnn{letgut}{Existing~command}{
  The~ command~  \c_backslash_str \text_lowercase:n{#1}~
  already~ exists~ and~ has~ not~ be~ overwritten~ by~
  \token_to_str:N \letgutacro{#1}{...}.~
  The~ corresponding~ acronym~ has~ to~ be~ used~ e.g.~
  like~ this:~
  \token_to_str:N \ac{ \text_lowercase:n{#1} }.
}
\msg_new:nnn{letgut}{Not~month~iso~date}{
  The~ supplied~ date~(“#1”)~ isn't~ at~ the~ month~ iso~
  date~ format~ (YYYY-MM):~ it~ will~ be~ printed~ as~
  it~ is.
}
\msg_new:nnn{letgut}{Banner~file~not~provided}{
  No~ `\c__letgut_banner_file_tl.pdf'~ file~ provided:~
  the~ banner~ will~ be~ automatically~ created.
}
\msg_new:nnn{letgut}{Editorial~file~missing}{
  File~`\c__letgut_editorial_file_tl.tex'~missing!~
  The~ editorial~ will~ be~ missing.
}
\msg_new:nnn{letgut}{Informations~file~missing}{
  File~ `\c__letgut_informations_gutenberg_file_tl.tex'~
  missing!~ The~ informations~ about~
  \c__letgut_gutenberg_tl\c_space_tl~ will~ be~ missing.
}
\msg_new:nnn{letgut}{pagecolor~inoperative~with~paper~option}{
  The~ `pagecolor=#1`~ option~ is~ inoperative~ with~ the~ `paper`~
  option:~ the~ color~ of~ the~ page~ will~ remain~ white.
}
\msg_new:nnn{letgut}{frontcover-missing}{
  You~ didn't~ use~ the~ `frontcover`~ option~ for~ the~
  bookreview~ “#1”,~ so~ the~ book~ cover~image~ will~ be~ missing:~
  are~ you~ sure?
}
\msg_new:nnn{letgut}{frontcover-file-not-found}{
  The~ book~ cover~ image~ `#2`~ you~ specified~ via~ the~
  `frontcover`~ option~ for~ the~ bookreview~ “#1”~ cannot~ be~ found.
}
\sys_if_engine_luatex:F {
  \msg_fatal:nn{letgut}{Wrong~engine}
}
\bool_new:N \g__letgut_title_empty_bool
\bool_new:N \g__letgut_paper_bool
\bool_new:N \l__letgut_in_footnote_bool
\bool_new:N \g__letgut_draft_bool
\dim_const:Nn \c__letgut_textheight_dim  { 25cm }
\dim_const:Nn \c__letgut_textwidth_dim  { 14cm }
\dim_const:Nn \c__letgut_lmargin_dim  { 5cm }
\dim_const:Nn \c__letgut_tmargin_dim  { 2.92cm }
% \dim_const:Nn \c__letgut_tmargin_dim  { 3cm }
\dim_const:Nn \c__letgut_head_dim  { 0.6cm }
\dim_const:Nn \c__letgut_headsep_dim  { 0.82cm }
% \dim_const:Nn \c__letgut_headsep_dim  { 0.9cm }
\dim_const:Nn \c__letgut_marginparwidth_dim  { 3.74cm }
\dim_const:Nn \c__letgut_hoffset_dim  { 3cm }
\dim_const:Nn \c__letgut_title_hoffset_dim  {
  -\c__letgut_hoffset_dim
}
\dim_const:Nn \c__letgut_subtitle_hoffset_dim  {
  \c__letgut_title_hoffset_dim
}
\dim_const:Nn \c__letgut_section_hoffset_dim  {
  \c__letgut_title_hoffset_dim + 1cm
}
\dim_const:Nn \c__letgut_subsection_hoffset_dim  {
  \c__letgut_title_hoffset_dim + 1.5cm
}
\dim_const:Nn \c__letgut_subsubsection_hoffset_dim  {
  \c__letgut_title_hoffset_dim + 2cm
}
\dim_const:Nn \c__letgut_paragraph_hoffset_dim  {
  \c__letgut_title_hoffset_dim + 2.5cm
}
\dim_const:Nn \c__letgut_subparagraph_hoffset_dim  {
  \c__letgut_title_hoffset_dim + 3cm
}
\dim_const:Nn \c__letgut_head_rule_skip_dim { 0.115cm }
\dim_const:Nn \c__letgut_head_rule_width_dim { 0.03cm }
\dim_const:Nn \c__letgut_banner_thickness_dim { 4cm }
\dim_const:Nn \c__letgut_banner_height_dim  {
  \c__letgut_textheight_dim
  +
  3cm
}
\dim_new:N \g__letgut_membership_reminder_box_height_dim
\dim_const:Nn \c__letgut_bookreview_frontcover_margin_sep_dim {
  4mm
 }
\dim_const:Nn \c__letgut_height_mentions_dim { 5mm }
\dim_const:Nn \c__letgut_from_left_boundingbox_to_text_dim { 5.5mm }
\dim_const:Nn \c__letgut_number_offset_dim { 1mm }
\dim_const:Nn \c__letgut_number_sep_dim {
  \c__letgut_from_left_boundingbox_to_text_dim
  +
  \c__letgut_number_offset_dim
}
\AddToHook{begindocument/before}{%
\skip_const:Nn \c__letgut_before_title_title_skip
{
  3.5ex plus 1ex minus .2ex
}
\skip_const:Nn \c__letgut_after_title_title_skip
{
  2.3ex plus .2ex
}
\skip_const:Nn \c__letgut_before_subtitle_title_skip
{
  \c__letgut_before_title_title_skip
}
\skip_const:Nn \c__letgut_after_subtitle_title_skip
{
  \c__letgut_after_title_title_skip
}
\skip_const:Nn \c__letgut_before_section_title_skip
{
  3.25ex plus 1ex minus .2ex
}
\skip_const:Nn \c__letgut_after_section_title_skip
{
  1.5ex plus .2ex
}
\skip_const:Nn \c__letgut_before_subsection_title_skip
{
  \c__letgut_before_section_title_skip
}
\skip_const:Nn \c__letgut_after_subsection_title_skip
{
  \c__letgut_after_section_title_skip
}
\skip_const:Nn \c__letgut_before_subsubsection_title_skip
{
  1.5ex plus .5ex minus .2ex
}
\skip_const:Nn \c__letgut_after_subsubsection_title_skip
{
  0.75ex plus 0.1ex
}
\skip_const:Nn \c__letgut_before_paragraph_title_skip
{
  \c__letgut_before_subsubsection_title_skip
}
\skip_const:Nn \c__letgut_after_paragraph_title_skip
{
  \c__letgut_after_subsubsection_title_skip
}
\skip_const:Nn \c__letgut_before_subparagraph_title_skip
{
  \c__letgut_before_paragraph_title_skip
}
\skip_const:Nn \c__letgut_after_subparagraph_title_skip
{
  \c__letgut_after_paragraph_title_skip
}
}
\int_new:N \g__letgut_ltx_example_int
\str_new:N \g__letgut_label_ltx_example_str
\str_new:N \g__letgut_callout_label_ltx_example_str
\str_const:Nn \c__letgut_label_ltx_example_str {
  __letgut_label_ltx_example
}
\str_const:Nn \c__letgut_callout_label_ltx_example_str {
  __letgut_callout_label_ltx_example
}
\tl_const:Nn \c__letgut_online_issn_tl {
  2742-6149~ (version~ numérique)
}
\tl_const:Nn \c__letgut_paper_issn_tl {
  1257–2217~ (version~ papier)
}
\tl_const:Nn \c__letgut_cahier_tl { \emph{ Cahier } }
\tl_const:Nn \c__letgut_cahiers_tl {
  \c__letgut_cahier_tl \emph{ s }
}
\tl_const:Nn \c__letgut_gnu_linux_tl { \software{GNU/Linux} }
\tl_const:Nn \c__letgut_macOS_tl { \software{macOS} }
\tl_const:Nn \c__letgut_windows_tl { \software{Windows} }
\tl_const:Nn \c__letgut_package_tl { package }
\tl_const:Nn \c__letgut_class_tl { classe }
\tl_const:Nn \c__letgut_file_tl { fichier }
\tl_const:Nn \c__letgut_software_tl { logiciel }
\tl_const:Nn \c__letgut_tugboat_tl { \emph{ TUGboat } }
\tl_const:Nn \c__letgut_tex_live_tl {
  \hologo{ TeX }\nobreakspace Live
}
\tl_const:Nn \c__letgut_banner_file_tl { bandeau }
\tl_const:Nn \c__letgut_editorial_file_tl { editorial }
\tl_const:Nn \c__letgut_informations_gutenberg_file_tl {
  informations-gut
}
\tl_const:Nn \c__letgut_acronyms_file_tl { letgut-acronyms }
\tl_const:Nn \c__letgut_local_config_file_tl { localconf }
\tl_const:Nn \c__letgut_lstlanguage_file_tl { letgut-lstlang.sty }
\tl_const:Nn \c__letgut_contents_name_tl { Sommaire }
\tl_const:Nn \c__letgut_draftwatermark_text_tl {
 \textnormal{Brouillon}
}
\tl_const:Nn \c__letgut_membership_reminder_tl {
  {\LARGE
    \bfseries
    Avez-vous~ pensé~ à~ régler~ votre~ cotisation~ ?
    % \the\year~ ?
    \par
    \medskip
  }
  Si~ vous~ avez~ oublié,~ ce~ n'est~ ni~ trop~ tard~
  ni~ difficile~ :
  \par
  \url{https://www.gutenberg-asso.fr/?Adherer-en-ligne}
  \bool_if:NT \g__letgut_informations_bool {
    \file_if_exist:nT
    {./\c__letgut_informations_gutenberg_file_tl}{
      \par
      Voir~ aussi~ page~ \pageref{letgut_label_adhesions}.
    }
  }
}
\tl_const:Nn \c__letgut_missing_editorial_tl {
  Ne~ pas~ omettre~ l'éditorial~ !\\(à~ faire~ figurer~
  dans~ un~ \file*{\c__letgut_editorial_file_tl.tex}~
  dans~ le~ dossier~ courant)
}
\tl_const:Nn \c__letgut_missing_infomations_tl {
  Ne~ pas~ omettre~ les~ informations~ sur~
  \c__letgut_gutenberg_tl{}~ !\\(dans~ un~
  \file*{\c__letgut_informations_gutenberg_file_tl.tex}~
  situé~ soit~ dans~ le~ dossier~ courant, soit~ dans~ le~
  dossier~ parent)
}
\tl_const:Nn \c__letgut_default_alert_box_color_tl {
  gray9
}
\tl_const:Nn \c__letgut_default_allcolors_links_color_tl
{
  teal!60!black
}
\tl_new:N \g__letgut_mark_tl
\tl_new:N \g__letgut_title_tl
\tl_new:N \l_letgut_last_name_tl
\tl_new:N \l_letgut_first_name_tl
\tl_new:N \l_letgut_title_tl
\tl_new:N \l__letgut_title_addon_tl
\tl_new:N \l__letgut_reference_text_tl
\clist_new:N \g__letgut_pagecolor_clist
\clist_const:Nn \c__letgut_default_pagecolor_screen_clist
{1.0, 0.98, 0.94}
\clist_const:Nn \c__letgut_default_pagecolor_paper_clist
{1, 1, 1}
\seq_new:N \l__letgut_first_last_names_items_seq
\RequirePackage{l3keys2e}
\int_new:N \g__letgut_date_month_int
\int_new:N \g__letgut_date_year_int

\int_gset:Nn \g__letgut_date_month_int {\the\month}
\int_gset:Nn \g__letgut_date_year_int  {\the\year}

\tl_new:N \g__letgut_date_month_tl
\tl_new:N \g__letgut_date_tl

\cs_new_protected:Npn \__letgut_date_parse:n #1
{
  \__letgut_if_is_iso_date:nTF {#1}
  {
    \__letgut_date_parse:www #1 \q_stop
  }{
    \msg_term:nnn{letgut}{Not~month~iso~date}{#1}
    \tl_gset:Nn \g__letgut_date_tl { #1 }
  }
}

\prg_new_protected_conditional:Npnn
\__letgut_if_is_iso_date:n #1 { T, F, TF }
{
  \regex_match:nnTF { ^\d{4}-(\d{1,2}) } {#1}
  { \prg_return_true: }
  { \prg_return_false: }
}

\prg_new_protected_conditional:Npnn
\__letgut_if_is_int:n #1 { T, F, TF }
{
  \regex_match:nnTF { ^[\+\-]?[\d]+$ } {#1}
  { \prg_return_true: }
  { \prg_return_false: }
}

\cs_new_protected:Npn \__letgut_month_name:n #1
{
  % \text_titlecase_first:n {
  \int_case:nnF
  { #1 }
  {
    { 1 }{ janvier }
    { 2 }{ février }
    { 3 }{ mars }
    { 4 }{ avril }
    { 5 }{ mai }
    { 6 }{ juin }
    { 7 }{ juillet }
    { 8 }{ août }
    { 9 }{ septembre }
    { 10 }{ octobre }
    { 11 }{ novembre }
    { 12 }{ décembre }
  }
  { Month~ Error! }
  % }
}

\cs_new_protected:Npn \__letgut_date_parse:www #1-#2
\q_stop
{
  \int_compare:nTF
  {
    \the\year <= #1 <= \the\year+1
}{
  \int_gset:Nn \g__letgut_date_year_int {#1}
}{
  \int_gset:Nn \g__letgut_date_year_int {\the\year}
}
\__letgut_if_is_int:nTF {#2}
{
  \int_compare:nTF
  {
    1 <= #2 <= 12
}
    {\int_gset:Nn \g__letgut_date_month_int {#2}}
    {\int_gset:Nn \g__letgut_date_month_int {\the\month}}
  }{
    \int_gset:Nn \g__letgut_date_month_int  {\the\month}
  }
  \tl_gset:Nn \g__letgut_date_month_tl {
    \__letgut_month_name:n { \g__letgut_date_month_int }
  }
  \tl_gset:Nn \g__letgut_date_tl {
    \tl_use:N \g__letgut_date_month_tl
    \c_space_tl
    \int_use:N \g__letgut_date_year_int
  }
}
\LoadClass[twoside,11pt]{article}
\RequirePackage{fontspec}
\RequirePackage[
, stretch=30
, shrink=25
, letterspace=150
]{microtype}
\RequirePackage{parskip}
\RequirePackage{fancyhdr}
\RequirePackage[a4paper]{geometry}
\RequirePackage{graphicx}
\RequirePackage{biolinum}
\RequirePackage{array}
\RequirePackage{etoc}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fourier-orns}
\RequirePackage[section,above]{placeins}
\RequirePackage{fancyvrb}
\RequirePackage{booktabs}
\RequirePackage{csquotes}
\RequirePackage[fleqn]{mathtools}
\RequirePackage{accsupp}
\RequirePackage{siunitx}
\RequirePackage{hologo}
\RequirePackage[table]{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{refcount}
\RequirePackage{ninecolors}
\RequirePackage{tabularray}
\RequirePackage[english,french]{babel}
\RequirePackage[nospace,french]{varioref}
\RequirePackage[right]{eurosym}
\RequirePackage{listings}
\RequirePackage{floatrow}
\RequirePackage[
  sorting=none,
  datamodel=letgut,
  citestyle=letgut
]{biblatex}
\RequirePackage{acro}
\AddToHook{begindocument/before}{
\RequirePackage{hyperref}
\RequirePackage[all]{hypcap}
\RequirePackage[french]{cleveref}
}
\sisetup{
  , locale=FR
  , mode=match
}
\DeclareMarginSet{hangleft}{
  \setfloatmargins{\hskip-\c__letgut_hoffset_dim}{\hfil}
}
\DeclareFloatVCode{__letgut_ruleabove}{
  \par\rule{\hsize}{.8pt}\vskip4pt\par
  }
\DeclareFloatVCode{__letgut_rulebelow}{
  \par\vskip2pt\rule{\hsize}{.8pt}\par
}
\DeclareFloatStyle{__letgut_ruled}{
  precode=__letgut_ruleabove,
  postcode=__letgut_rulebelow,
  % heightadjust=all,
  floatwidth=.8\linewidth
}
\floatsetup{objectset=justified}
\floatsetup[figure]{
  style=__letgut_ruled,
  margins=hangleft,
  capposition=beside,
  capbesideposition={top,left},
  floatwidth=0.85\textwidth
}
\floatsetup[table]{capposition=top}
\renewcommand*\frenchtablename{Tableau}
\NewCommandCopy{\__letgut_old_printbibliography}{
  \printbibliography
}
\RenewDocumentCommand {\printbibliography} { O{} } {
  \phantomsection
  \__letgut_old_printbibliography[#1]
}
\defbibheading{title}[\refname]{%
  \title{#1}}
\defbibheading{subtitle}[\refname]{%
  \subtitle{#1}}
\acsetup{
  first-style=footnote,
  format/short = {\scshape},
  format/foreign = {\em},
  foreign/display,
  locale/format = {\upshape},
  locale/display,
}
\cs_undefine:N \acro_footnote:n
\cs_new_protected:Npn \acro_footnote:n #1
{
  \tl_set:Ne \l__acro_tmpa_tl {
     \l__acro_fnpct_check_tl
     }
  \exp_last_unbraced:Nno
  \footnote {#1.}
  \l__acro_tmpa_tl
}
\AddToHook{begindocument/before}{
\bool_if:NTF \g__letgut_paper_bool {
  \hypersetup{hidelinks}
}{
  \hypersetup{%
    colorlinks,%
    allcolors={letgut_allcolors_links},%
  }%
}
\file_if_exist:nTF {./\c__letgut_acronyms_file_tl}{
  \file_input:n {./\c__letgut_acronyms_file_tl}
}{
  \file_if_exist:nTF {../\c__letgut_acronyms_file_tl}{
    \file_input:n {../\c__letgut_acronyms_file_tl}
  }{
    \file_if_exist:nT {\c__letgut_acronyms_file_tl}{
      \file_input:n {\c__letgut_acronyms_file_tl}
    }
  }
}
% % \bool_if:NF \g__letgut_paper_bool {
\bool_if:NT \g__letgut_draft_bool {
  % \RequirePackage[All]{lua-typo}
  \AddToHook{shipout/background}
  {
    \__letgut_unselectable:n {
      \put(0.5\paperwidth,-0.5\paperheight)
      {
        \Huge
% \color_fill:n {black!10}
\color{black!10}
\hbox_set:Nn \l_tmpa_box {
  \fontsize{0.25\paperwidth}{0.3\paperwidth}
  \selectfont
  \c__letgut_draftwatermark_text_tl
}
\hbox_set:Nn \l_tmpb_box {
  \hbox_overlap_center:n {
    \box_use:N \l_tmpa_box
  }
}
\box_rotate:Nn \l_tmpb_box {
  \fp_eval:n {
    atand (
    \dim_to_fp:n {\paperheight}
    /
    \dim_to_fp:n {\paperwidth}
    )
  }
}
\box_use:N \l_tmpb_box
}
}
}
\setlength\overfullrule{5pt}
}
% % }
}
\pagecolor[rgb]{\c__letgut_default_pagecolor_screen_clist}
\clist_set_eq:NN \g__letgut_pagecolor_clist
  \c__letgut_default_pagecolor_screen_clist
\keys_define:nn { letgut }
{
  , for-readers .bool_gset:N = \g__letgut_for_readers_bool
  , for-readers .initial:n = { true }
  , for-readers .default:n = { true }
  , for-authors .bool_gset_inverse:N = \g__letgut_for_readers_bool
  , draft .bool_gset:N = \g__letgut_draft_bool
  , draft .initial:n = { true }
  , draft .default:n = { true }
  , final .bool_gset_inverse:N = \g__letgut_draft_bool
  , paper .code:n = {
    \bool_gset_true:N \g__letgut_paper_bool
    \pagecolor[rgb]{\c__letgut_default_pagecolor_paper_clist}
    \clist_set_eq:NN \g__letgut_pagecolor_clist
      \c__letgut_default_pagecolor_paper_clist
  }
  , screen .bool_gset_inverse:N = \g__letgut_paper_bool
  , number .int_gset:N = \g__letgut_number_int
  , date .code:n = { \__letgut_date_parse:n { #1 } }
  , date .initial:x = {\the\year-\the\month}
  , pagecolor .initial:V
    = \c__letgut_default_pagecolor_screen_clist
  , pagecolor .code:n = {
    \definecolor{letgut_pagecolor}{rgb}{#1}
    \AddToHook{begindocument/before}
    {
      \bool_if:NTF \g__letgut_paper_bool {
        \msg_warning:nnn{letgut}{
          pagecolor~inoperative~with~paper~option
        }{#1}
      }{
        \clist_gset:Nn \g__letgut_pagecolor_clist { #1 }
        \pagecolor[rgb]{#1}
      }
    }
  }
  , allcolorslinks .code:n = {
    \colorlet{letgut_allcolors_links}{#1}}
  , allcolorslinks .initial:V
    = \c__letgut_default_allcolors_links_color_tl
  , membership-reminder .bool_gset:N
    = \g__letgut_membership_reminder_bool
  , membership-reminder  .initial:n = { true }
  , editorial .bool_gset:N = \g__letgut_editorial_bool
  , editorial .initial:n = { true }
  , informations .bool_gset:N = \g__letgut_informations_bool
  , informations .initial:n = { true }
  , detailedtoc .bool_gset:N = \g__letgut_detailedtoc_bool
  , detailedtoc .initial:n = { false }
}
\ProcessKeysOptions { letgut }
\definecolor{letgut_pagecolor}{rgb}{\g__letgut_pagecolor_clist}
\renewcommand{\headruleskip}{
  \c__letgut_head_rule_skip_dim
}
\renewcommand{\headrulewidth}{
  \c__letgut_head_rule_width_dim
}
\fancyhf{}
\fancyhead[RO,LE]{\thepage}
\fancyhead[RE,LO]{\g__letgut_mark_tl}
\fancyheadoffset[L]{\c__letgut_hoffset_dim}
\pagestyle{fancy}
\reversemarginpar
\etocsetstyle {section}
{}
{\leavevmode\leftskip 2.5cm\relax}
{\mdseries\small%
  \etocname~\dotfill~\etocpage\par
}
{}
\etocsetstyle {subsection}
{}
{\leavevmode\leftskip 3cm\relax}
{\mdseries\footnotesize%
  \etocname~\dotfill~\etocpage\par
}
{}
\etocsetstyle {subsubsection}
{}
{\leavevmode\leftskip 3.5cm\relax}
{\mdseries\scriptsize%
  \etocname~\dotfill~\etocpage\par
}
{}
\etocsetstyle {paragraph}
{}
{\leavevmode\leftskip 4cm\relax}
{\mdseries\tiny%
  \etocname~\dotfill~\etocpage\par
}
{}
\etocsetstyle {subparagraph}
{}
{\leavevmode\leftskip 4.5cm\relax}
{\mdseries\tiny%
  \etocname~\dotfill~\etocpage\par
}
{}
\renewcommand*\frenchcontentsname{}
\geometry{
  asymmetric,
  textheight=\c__letgut_textheight_dim,
  textwidth=\c__letgut_textwidth_dim,
  lmargin=\c__letgut_lmargin_dim,
  tmargin=\c__letgut_tmargin_dim,
  head=\c__letgut_head_dim,
  headsep=\c__letgut_headsep_dim,
  marginparwidth=\c__letgut_marginparwidth_dim,
  % verbose,
  % showframe
}
\cs_new_protected:Nn \__letgut_alert_box:nn
{
  \noindent
  \begin{tblr}{
      width=\linewidth,
      rowspec={Q[c,m,#1]},
      colspec={|
>{\bfseries}X|
      },
      vlines,
      hlines,
      rowsep=2.5mm,
      colsep=2.5mm
    }
    #2
  \end{tblr}
  \skip_vertical:N \c_zero_dim
}
\tl_gclear:N \@title
\AddToHook{begindocument/before}
{
  \str_set_eq:NN \g__letgut_@title_str \@title
\tl_gset:Nn \g__letgut_title_tl {
   \int_compare:nNnT
   \g__letgut_number_int
> \c_zero_int
   {numéro~ \int_use:N\g__letgut_number_int{}~ --~ }
   \g__letgut_date_tl
 }
 \str_if_empty:NTF \g__letgut_@title_str {
   \tl_gset:Nn \g__letgut_mark_tl {
     \textit{\c__letgut_La_lettre_gutenberg_tl}
   }
 }{
   \tl_gset:Nn \g__letgut_mark_tl {
     \g__letgut_@title_str
   }
 }
 \tl_gput_right:Nn \g__letgut_mark_tl {
   ,~\g__letgut_title_tl
 }
}
\AddToHook{begindocument/before}{
  \bool_if:NT \g__letgut_for_readers_bool {
\file_if_exist:nTF {\c__letgut_banner_file_tl.pdf}{
  \AddToHookNext{shipout/background}
  {
    \begin{picture}(0,0)
      \put(-2cm,-25.275cm){
        \includegraphics[scale=0.96]{
          \c__letgut_banner_file_tl.pdf
        }
      }
    \end{picture}
  }
}{
\msg_term:nn{letgut}{Banner~file~not~provided}
  \RequirePackage[pagecolor={\g__letgut_pagecolor_clist}]{
    letgut-banner
  }
}
\AddToHook{begindocument/end}
{
\bool_if:NT \g__letgut_membership_reminder_bool {
  \box_new:N \g__letgut_membership_reminder_box
  \vbox_gset:Nn \g__letgut_membership_reminder_box {
    \alertbox []{ \c__letgut_membership_reminder_tl }
  }
  \dim_gset:Nn
  \g__letgut_membership_reminder_box_height_dim {
    \box_ht:N \g__letgut_membership_reminder_box
  }
  \enlargethispage{
   - \g__letgut_membership_reminder_box_height_dim
  }
}
\dim_const:Nn \c__letgut_first_page_shrink_dim {
  \c__letgut_banner_thickness_dim
  +
  \c__letgut_tmargin_dim
  +
  \c__letgut_textheight_dim
  -
  .5\paperheight
  -
  .5\c__letgut_banner_height_dim
}
\enlargethispage{
  - \c__letgut_first_page_shrink_dim
}
\enlargethispage{
  - \baselineskip
}
\str_if_empty:NTF \g__letgut_@title_str {
  \bool_gset_true:N \g__letgut_title_empty_bool
  \begin{flushright}
    \Huge
    \text_titlecase_first:n { \g__letgut_title_tl }
  \end{flushright}
  \hypersetup{
    pdftitle={
      \c__letgut_Lettre_gutenberg_tl
      \int_compare:nNnT
      \g__letgut_number_int
> \c_zero_int
      {
        \c_space_tl~ \int_use:N \g__letgut_number_int
      }
    },
    pdfauthor={
      Association~
      \c__letgut_gutenberg_tl
      \c_space_tl
      (éditeur)
    },
  }
  \vspace*{1cm}
}{
  \hypersetup{
    pdftitle={\g__letgut_@title_str}
  }
  \tl_if_empty:NF \@author {
    \hypersetup{
      pdfauthor={\@author}
    }
  }
\null
\vskip 2em%
\begin{center}%
  \let \footnote \thanks
  {\LARGE \@title \par}%
  \vskip 1.5em%
  {\large
    \lineskip .5em%
    \begin{tabular}[t]{c}%
      \@author
    \end{tabular}\par}%
  \vskip 1em%
  {\large \@date}%
\end{center}%
\par
\vskip 1.5em
}
\thispagestyle{empty}
\bool_if:NTF \g__letgut_detailedtoc_bool {
  \etocsetnexttocdepth{5}
}{
  \etocsetnexttocdepth{0}
}
\pdfbookmark[1]{
  \c__letgut_contents_name_tl
}{
  \c__letgut_contents_name_tl
}
\tableofcontents
\etocsetnexttocdepth{1}
\bool_if:NTF \g__letgut_title_empty_bool {
  \vspace*{1.5cm}
}{
  \newpage
}
\bool_if:NTF \g__letgut_editorial_bool {
  \file_if_exist:nTF {./\c__letgut_editorial_file_tl}{
    \RenewDocumentCommand\author{ m } {
      \__letgut_author:n { #1 }
    }
    \pdfbookmark[1]{Éditorial}{
      \c__letgut_editorial_file_tl
    }
    \__letgut_input_article:n {./\c__letgut_editorial_file_tl}
    % % \int_set:N \l_tmpa_int {\pagenumber}
    % % \int_compare:nNnT \l_tmpa_int = 1 { \newpage }
% \if\count{\pagenumber}>1
    % \else
    % \newpage
    % \fi
  }{
    \msg_warning:nn{letgut}{Editorial~file~missing}
    \alertbox{ \c__letgut_missing_editorial_tl }
    \newpage
  }
}{
  % \newpage
}
}
\AddToHook{begindocument}{
  \bool_if:NT \g__letgut_membership_reminder_bool {
    \AddToHookNext{shipout/background}
    {
      \put(1in,-1in){
        \put(
        \oddsidemargin,
        - \topmargin
        - \headheight
        - \headsep
        - \textheight
        + \c__letgut_first_page_shrink_dim
        + .5\baselineskip
        ){
          \box_use:N \g__letgut_membership_reminder_box
        }
      }
    }
  }
}
\AddToHook{enddocument}
{
\bool_if:NT \g__letgut_informations_bool {
  \clearpage
  \phantomsection
  \file_if_exist:nTF {./\c__letgut_informations_gutenberg_file_tl}{
    \__letgut_input_article:n {
      ./\c__letgut_informations_gutenberg_file_tl
    }
  }{
    \file_if_exist:nTF {../\c__letgut_informations_gutenberg_file_tl}{
      \__letgut_input_article:n {
        ../\c__letgut_informations_gutenberg_file_tl
      }
    }{
      \file_if_exist:nTF {\c__letgut_informations_gutenberg_file_tl}{
        \__letgut_input_article:n {
          \c__letgut_informations_gutenberg_file_tl
        }
      }{
        \msg_warning:nn{letgut}{Informations~file~missing}
        \alertbox{ \c__letgut_missing_infomations_tl }
      }
    }
  }
}
}
}
}
\setcounter{secnumdepth}{-10}
\AddToHook{begindocument/before}{%
  \titleclass{\title}{straight}[\part]
  \titleformat{\title}{
    \normalfont
    \LARGE
    \bfseries
    \text_uppercase:n
  }{}{1em}{
    \aldineleft\c_space_tl
    }{}
  \etocsetlevel{title}{0}
  \def\toclevel@title{0}%
  \etocsetstyle {title}
  {}
  {
    \leavevmode\leftskip 2cm\relax
  }
  {
    \bool_if:NTF \g__letgut_detailedtoc_bool {
      \bfseries
    }{
      \mdseries
    }
    \normalsize
    \etocname
    \nobreak\leaders\hbox~ to~ 1ex{\hss.}\hfill
    \etocpage
    \par
  }
  {}
\titleclass{\subtitle}{straight}[\title]
\titleformat{\subtitle}{
  \normalfont
  \Large
  \bfseries
  \text_uppercase:n
}{}{1em}{}{}
\etocsetlevel{subtitle}{1}
\def\toclevel@subtitle{1}%
\def\toclevel@subtitle{1}
\AddToHook{cmd/title/before}{
  \etocsetlevel{section}{1}
  \def\toclevel@section{1}%
  \etocsetlevel{subsection}{2}
  \def\toclevel@subsection{2}%
  \etocsetlevel{subsubsection}{3}
  \def\toclevel@subsubsection{3}%
  \etocsetlevel{paragraph}{4}
  \def\toclevel@paragraph{4}%
  \etocsetlevel{subparagraph}{5}
  \def\toclevel@subparagraph{5}%
}
\AddToHook{cmd/subtitle/before}{
  \etocsetlevel{section}{2}
  \def\toclevel@section{2}%
  \etocsetlevel{subsection}{3}
  \def\toclevel@subsection{3}%
  \etocsetlevel{subsubsection}{4}
  \def\toclevel@subsubsection{4}%
  \etocsetlevel{paragraph}{5}
  \def\toclevel@paragraph{5}%
  \etocsetlevel{subparagraph}{6}
  \def\toclevel@subparagraph{6}%
}
\titleformat{\paragraph}{
    \normalfont
    \normalsize
    \bfseries
  }{\theparagraph}{1em}{}
  \titleformat{\subparagraph}{
    \normalfont
    \normalsize
    \bfseries
  }{\thesubparagraph}{1em}{}
}
\titlespacing*{\title}
{\c__letgut_title_hoffset_dim}
{\c__letgut_before_title_title_skip}
{\c__letgut_after_title_title_skip}
\titlespacing*{\subtitle}
{\c__letgut_subtitle_hoffset_dim}
{\c__letgut_before_subtitle_title_skip}
{\c__letgut_after_subtitle_title_skip}
\titlespacing*{\section}
{\c__letgut_section_hoffset_dim}
{\c__letgut_before_section_title_skip}
{\c__letgut_after_section_title_skip}
\titlespacing*{\subsection}
{\c__letgut_subsection_hoffset_dim}
{\c__letgut_before_subsection_title_skip}
{\c__letgut_after_subsection_title_skip}
\titlespacing*{\subsubsection}
{\c__letgut_subsubsection_hoffset_dim}
{\c__letgut_before_subsubsection_title_skip}
{\c__letgut_after_subsubsection_title_skip}
\titlespacing*{\paragraph}
{\c__letgut_paragraph_hoffset_dim}
{\c__letgut_before_paragraph_title_skip}
{\c__letgut_after_paragraph_title_skip}
\titlespacing*{\subparagraph}
{\c__letgut_subparagraph_hoffset_dim}
{\c__letgut_before_subparagraph_title_skip}
{\c__letgut_after_subparagraph_title_skip}
\NewDocumentCommand \letgutsetup { m } {
  \keys_set:nn { letgut } { #1 }
}
\cs_new_protected:Nn \__letgut_ctan_news_item:n {
  \package{#1}~:
}
\newlist{ctannews}{description}{1}
\setlist[ctannews]{format=\__letgut_ctan_news_item:n}
\cs_new_protected:Npn \__letgut_item:nn #1 #2
{
  \tl_if_empty:nTF {#2}
  {
    \__letgut_old_item
  }{
    \__letgut_old_item[#2]
  }
  \phantomsection
  \IfBooleanT {#1}{
    \mbox{}\marginpar[\mbox{}\hfill\francophony]{}
  }
}
\NewCommandCopy{\__letgut_old_item}{\item}
\RenewDocumentCommand {\item} { s O{} } {
  \__letgut_item:nn {#1}{#2}
}
\NewDocumentCommand {\francophony} {  } {
  \raisebox{-1.5pt}{
    \includegraphics[width=\f@size pt]{
      letgut-francophony-icon
    }
  }
}
\NewDocumentCommand {\person} { m } {
  \__letgut_process_list:n {#1}
}
\cs_new_protected:Npn \__letgut_author:n #1
{
  \nopagebreak
  \begin{flushright}
    \__letgut_process_list:n {#1}
  \end{flushright}
}
\AddToHook{begindocument/end}{%
  \RenewDocumentCommand\author{ m } {
    \__letgut_author:n { #1 }
  }
}
\cs_new_protected:Npn \__letgut_titlecase_name:n #1
{
  \seq_set_split:Nnn \l_tmpa_seq { - }  {#1}
  \seq_set_map_x:NNn \l_tmpb_seq \l_tmpa_seq {
    \text_titlecase_first:n{ \text_lowercase:n {##1} }
  }
  \tl_set:Nx \l_tmpa_tl {\seq_use:Nn \l_tmpb_seq {-}}
  \seq_clear:N \l_tmpa_seq
  \seq_set_split:NnV \l_tmpa_seq { ~ }  { \l_tmpa_tl }
  \seq_set_map_x:NNn \l_tmpb_seq \l_tmpa_seq {
    \text_titlecase_first:n{##1}
  }
  \seq_use:Nn \l_tmpb_seq {~}
}
\cs_new_protected:Nn \__letgut_person_last_name:n
{
  {% \scshape
    \__letgut_titlecase_name:n {#1}}
}
\cs_new_protected:Nn \__letgut_person_first_name_last_name:nn
{
  \__letgut_titlecase_name:n {#1}
  \c_space_tl
  \__letgut_person_last_name:n {#2}
}
\cs_new_protected:Nn
\__letgut_person_first_name_last_name_title:nnn
{
  \__letgut_person_first_name_last_name:nn {#1} {#2}
  \c_space_tl
  (#3)
}
\seq_new:N \l__letgut_items_seq
\cs_new_protected:Npn \__letgut_process_list:n #1
{
  \seq_clear:N \l__letgut_items_seq
  \seq_set_split:Nnn \l_tmpa_seq {~and~} {#1}
  \seq_map_inline:Nn \l_tmpa_seq {
    \seq_set_from_clist:Nn \l_tmpb_seq {##1}
    \seq_pop_left:NN \l_tmpb_seq \l_letgut_last_name_tl
    \seq_pop_left:NN \l_tmpb_seq \l_letgut_first_name_tl
    \seq_pop_left:NN \l_tmpb_seq \l_letgut_title_tl
    \seq_put_right:Nx \l__letgut_items_seq {
      \quark_if_no_value:NTF \l_letgut_first_name_tl {
        \__letgut_person_last_name:n {
          \l_letgut_last_name_tl
        }
      }{
        \quark_if_no_value:NTF \l_letgut_title_tl {
          \__letgut_person_first_name_last_name:nn
          {\l_letgut_first_name_tl}
          {\l_letgut_last_name_tl}
        }{
          \__letgut_person_first_name_last_name_title:nnn
          {\l_letgut_first_name_tl}
          {\l_letgut_last_name_tl}
          {\l_letgut_title_tl}
        }
      }
    }
  }
  \seq_use:Nnnn \l__letgut_items_seq {
    \c_space_tl \str_use:N \& \c_space_tl
  } { ,~ } { \c_space_tl \str_use:N \& \c_space_tl }
}
\NewDocumentCommand {\separator} {  } {
  \par
  \skip_vertical:N 1em
  \hrule
  \skip_vertical:N 1em
}
\colorlet {letgut_default_alert_box_color} {
  \c__letgut_default_alert_box_color_tl
}
\NewDocumentCommand \alertbox {
  O{letgut_default_alert_box_color} +m
} {
  \__letgut_alert_box:nn { #1 }{ #2 }
}
\tl_const:Nx \c__letgut_httpsprefix_tl
{https\char_generate:nn{58}{12}//}
\tl_new:N \l__letgut__tex_stuff_font_switch_tl
\tl_new:N \l__letgut_files_font_switch_tl
\tl_new:N \l__letgut_softwares_font_switch_tl
\tl_set:Nn \l__letgut__tex_stuff_font_switch_tl {\sffamily}
\tl_set:Nn \l__letgut_files_font_switch_tl {\ttfamily}
\tl_set:Nn \l__letgut_softwares_font_switch_tl {\ttfamily}
\cs_new_protected:Nn \__letgut_tex_stuff:nn
{
  \IfNoValueTF {#1}
  {
    \href{
      \c__letgut_httpsprefix_tl ctan.org/pkg/#2
    }{
      {\l__letgut__tex_stuff_font_switch_tl #2}
    }
  }{
    \tl_if_empty:nTF {#1}
    {
      {\l__letgut__tex_stuff_font_switch_tl #2}
    }{
      \href{#1}{{\l__letgut__tex_stuff_font_switch_tl #2}}
    }
  }
}
\cs_new_protected:Nn \__letgut_software:nn
{
  \tl_if_empty:nTF {#1}
  {
    {\l__letgut_softwares_font_switch_tl #2}
  }{
    \href{#1}{{\l__letgut_softwares_font_switch_tl #2}}
  }
}
\cs_new_protected:Nn \__letgut_file:n
{
  {\l__letgut_files_font_switch_tl #1}
}
\NewDocumentCommand{\package}{ s o m O{\c__letgut_package_tl} } {
  \IfBooleanT{#1}{
    #4
    \c_space_tl
  }
  \__letgut_tex_stuff:nn {#2}{#3}
}
\NewDocumentCommand{\class}{ s o m O{\c__letgut_class_tl} } {
  \IfBooleanT{#1}{
    #4
    \c_space_tl
  }
  \__letgut_tex_stuff:nn {#2}{#3}
}
\NewDocumentCommand{\file}{ s m O{\c__letgut_file_tl} } {
  \IfBooleanT{#1}{
    #3
    \c_space_tl
  }
  \__letgut_file:n {#2}
}
\NewDocumentCommand {\software} { s O{} m O{\c__letgut_software_tl} } {
  \IfBooleanT{#1}{
    #4
    \c_space_tl
  }
  \__letgut_software:nn {#2}{#3}
}
\NewExpandableDocumentCommand { \gutenberg } {  } {
   \c__letgut_gutenberg_tl
 }
 \NewExpandableDocumentCommand { \gut } {  } {
   \c__letgut_gutenberg_tl
 }
\NewExpandableDocumentCommand { \lettre } { } {
  \c__letgut_Lettre_tl
 }
 \NewExpandableDocumentCommand { \lettregut } { } {
   \lettre \c_space_tl \gutenberg
 }
 \NewExpandableDocumentCommand { \Cahier } { } {
   \c__letgut_cahier_tl
 }
 \NewExpandableDocumentCommand { \Cahiers } { } {
   \c__letgut_cahiers_tl
 }
 \NewExpandableDocumentCommand { \cahier } { } {
   \c__letgut_cahier_tl
 }
 \NewExpandableDocumentCommand { \cahiers } { } {
   \c__letgut_cahiers_tl
 }
 \NewExpandableDocumentCommand { \cahiergut } { } {
   \cahier \c_space_tl \gutenberg
 }
 \NewExpandableDocumentCommand { \cahiersgut } { } {
   \cahiers \c_space_tl \gutenberg
 }
 \NewExpandableDocumentCommand { \letgut } {  } {
   \class{letgut}
 }
 \NewExpandableDocumentCommand { \letgutcls } {  } {
   \class*{letgut}
 }
 \NewExpandableDocumentCommand { \tugboat } {  } {
   \c__letgut_tugboat_tl
 }
 \NewExpandableDocumentCommand { \knuth } {  } {
   \person{Knuth,~ Donald~ E.}
 }
 \NewExpandableDocumentCommand { \lamport } {  } {
   \person{Lamport,~ Leslie}
 }
 \NewExpandableDocumentCommand { \tl } {  } {
   \c__letgut_tex_live_tl
 }
 \NewExpandableDocumentCommand { \linux } {  } {
   \c__letgut_gnu_linux_tl
 }
 \NewExpandableDocumentCommand { \macos } {  } {
   \c__letgut_macOS_tl
 }
 \NewExpandableDocumentCommand { \windows } {  } {
   \c__letgut_windows_tl
 }
\cs_new_protected:Npn \__letgut_emphasis:n #1
{
  \emph{#1}
}
\NewDocumentCommand { \foreignloc } { m } {
  \__letgut_emphasis:n {#1}
}
\NewDocumentCommand { \latinloc } { m } {
  \__letgut_emphasis:n {#1}
}
\AddToHook{begindocument/end}{
  \pdfstringdefDisableCommands{
    \RenewExpandableDocumentCommand\person { m }{#1}
    \RenewExpandableDocumentCommand\author{ m }{#1}
    \RenewExpandableDocumentCommand \package { s O{} m }{
      \IfBooleanT{#1}{\c__letgut_package_tl\c_space_tl}#3
    }
    \RenewExpandableDocumentCommand\class { s O{} m }{
      \IfBooleanT{#1}{\c__letgut_class_tl\c_space_tl}#3
    }
    \RenewExpandableDocumentCommand\file { s m }{
      \IfBooleanT{#1}{\c__letgut_file_tl\c_space_tl}#2
    }
    \RenewExpandableDocumentCommand\software { s O{} m }{
      \IfBooleanT{#1}{\c__letgut_software_tl\c_space_tl}#3
    }
    \RenewExpandableDocumentCommand\foreignloc{ m }{#1}
    \RenewExpandableDocumentCommand\latinloc{ m }{#1}
    \RenewExpandableDocumentCommand\lettre{ }{Lettre}
    \RenewExpandableDocumentCommand\gutenberg{ }{GUTenberg}
    \RenewExpandableDocumentCommand\gut{ }{\gutenberg}
    \RenewExpandableDocumentCommand\lettregut{ }{
      \lettre\c_space_tl\gutenberg
    }
    \RenewExpandableDocumentCommand\Cahier{ }{Cahier}
    \RenewExpandableDocumentCommand\Cahiers{ }{\Cahier s}
    \RenewExpandableDocumentCommand\cahier{ }{Cahier}
    \RenewExpandableDocumentCommand\cahiers{ }{\cahier s}
    \RenewExpandableDocumentCommand\cahiergut{ }{
      \cahier\c_space_tl\gutenberg
    }
    \RenewExpandableDocumentCommand\cahiersgut{ }{
      \cahier s\c_space_tl\gutenberg
    }
    \RenewExpandableDocumentCommand\letgut{ }{letgut}
    \RenewExpandableDocumentCommand\letgutcls{ }{classe~ letgut}
    \RenewExpandableDocumentCommand\knuth{ }{Donald~ E.~ Knuth}
    \RenewExpandableDocumentCommand\lamport{ }{Leslie~ Lamport}
    \RenewExpandableDocumentCommand\linux{ }{GNU/Linux}
    \RenewExpandableDocumentCommand\macos{ }{macOS}
    \RenewExpandableDocumentCommand\windows{ }{Windows}
  }
}
\cs_new_protected:Nn \__letgut_acronym:nnnn
{
  \AddToHook{begindocument/before}{
  \IfValueTF {#4}{
    \tl_if_empty:nTF {#4}{
      \exp_args:Nx \DeclareAcronym{\text_lowercase:n {#2}}{
        short = \text_lowercase:n {#2},
        sort= #2,
        long = {\emph{#3}},
        extra-long = {anglais},
        pdfstring = #2,
        short-acc = #2,
        #1
      }
    }{
      \exp_args:Nx \DeclareAcronym{\text_lowercase:n {#2}}{
        short = \text_lowercase:n {#2},
        sort= #2,
        long = {#4},
        foreign = {#3},
        foreign-babel = english,
        foreign-locale = anglais,
        pdfstring = #2,
        short-acc = #2,
        #1
      }
    }
  }{
    \exp_args:Nx \DeclareAcronym{\text_lowercase:n {#2}}{
      short = \text_lowercase:n {#2},
      sort= #2,
      long = {#3},
      pdfstring = #2,
      short-acc = #2,
      #1
    }
  }
\exp_after:wN \cs_if_exist:cT { \text_lowercase:n {#2} } {
  \msg_note:nnn{letgut}{Existing~command}{#2}
}
\exp_args:Nc \ProvideDocumentCommand
{ \text_lowercase:n {#2} } { s } {
  \IfBooleanTF {##1}{
    \exp_args:Nx \acs { \text_lowercase:n {#2} }
  }{
    \exp_args:Nx \ac  { \text_lowercase:n { #2 } }
  }
}
\pdfstringdefDisableCommands
  {
    \exp_after:wN
    \def\cs:w \text_lowercase:n {#2} \cs_end: { #2 }
  }
}
}
\let\__letgut_next_token\relax
\cs_new_protected:Npn \__letgut_next_token_is_footnote:
{\if_meaning:w\footnote\__letgut_next_token\textsuperscript{,}\fi}
\NewCommandCopy{\__letgut_old_footnote}{\footnote}
\RenewDocumentCommand {\footnote} { O{} m }{
  \bool_set_true:N \l__letgut_in_footnote_bool
  \tl_if_empty:nTF {#1}{
    \__letgut_old_footnote { #2 }
  }{
    \__letgut_old_footnote [#1] { #2 }
  }
  \bool_set_false:N \l__letgut_in_footnote_bool
  \futurelet\__letgut_next_token\__letgut_next_token_is_footnote:
}
\DeclareAcroProperty{extra-foreign}
\DeclareAcroProperty{extra-long}
\RenewAcroTemplate {footnote}
{
  \acrowrite {short}
  \acroiffirstT
  {
\bool_if:NTF \l__letgut_in_footnote_bool {
        \space
        (
        \acroifT {alt} { \acrotranslate {or} ~ \acrowrite {alt} ~ }
        \acroifT {foreign} { \acrowrite {foreign} }
        \acrowrite {long}
        \acrogroupcite
        )
      }{
        \acfootnote
        {
          \acroifT {alt} {
            \acrotranslate {or} ~ \acrowrite {alt} :~
          }
          \acroifT {foreign} { \acrowrite {foreign} }
          \acrowrite {long}
          \acroifT {extra-long} { ~ [\acrowrite {extra-long}] }
          \acroifT {extra-foreign} {
            \c_space_tl [\acrowrite {extra-foreign}]
          }
          \acrogroupcite
        }
      }
    }
  }
  \RenewAcroTemplate[list]{description}{%
    \acroheading
    \acropreamble
    \begin{description}
      \acronymsmapF{%
    \item[\acrowrite{short}\acroifT{alt}{/\acrowrite{alt}}]
      \acroifT{foreign}{
        \acrowrite{foreign}\acroifT{extra}{, }
      }%
      \acroifT{extra}{\acrowrite{extra}}%
      \acroifanyT{foreign,extra}{\acspace (}%
      \acrowrite{list}%
      \acroifT {extra-foreign} {
        , \c_space_tl \acrowrite {extra-foreign}
      }
      \acroifanyT{foreign,extra}{)}%
      \acropagefill
      \acropages
      {\acrotranslate{page}\nobreakspace}
      {\acrotranslate{pages}\nobreakspace}%
    }
    {\item\AcroRerun}
  \end{description}
}
% #1: id
% #2: property
% #3: text
\cs_set_protected:Npn \acro_locale:nnn #1#2#3
  {
    \acro_if_foreign:nTF {#2}
      {
        \acro_if_locale:nnTF {#1} {#2}
          {
            \__acro_foreign_language:en
              { \str_lowercase:e {
                  \acro_property_get:nn {#1} {foreign-babel}
                }
              }
              {#3}
            \bool_if:NTF \l__acro_list_bool
              { \bool_if:NT \l__acro_list_show_locale_bool }
              { \bool_if:NT \l__acro_show_locale_bool }
              {
                {
                  \l__acro_locale_format_tl
                    {
                      \acro_property_if_set:nnTF {#1} {
                        foreign-locale
                      }
                        {
                          \acspace
                          [
                          \acro_property_get:nn {#1} {
                            foreign-locale
                          }
                          ]
                        }{
                          \baselanguage
                          {
                            \acro_property_get:nn {#1} {
                              foreign-babel
                            }
                          }
                        }
                    }
                }
                :~
              }
          }
          {#3}
      }
      {#3}
  }
\NewDocumentCommand{\letgutacro}{ O{} m m o }
{
  \__letgut_acronym:nnnn {#1} {#2} {#3} {#4}
}
\NewAcroTemplate[heading] {title}
  { \title { \acrolistname } }
\NewAcroTemplate[heading] {subtitle}
  { \subtitle { \acrolistname } }
\@onlypreamble\letgutacro
\NewCommandCopy{\__letgut_old_citeauthor}{
  \citeauthor
}
\RenewDocumentCommand {\citeauthor} { O{} O{} m } {
  \AtNextCite{\DeclareNameAlias{labelname}{given-family}}
  \__letgut_old_citeauthor[#1][#2]{#3}
}
\tl_new:N \g__letgut_bookreview_frontcover_tl
\tl_new:N \g__letgut_bookreview_bibkey_tl
\keys_define:nn { letgut/bookreview }
{
  title .tl_gset:N = \g__letgut_bookreview_title_tl,
  frontcover .tl_gset:N = \g__letgut_bookreview_frontcover_tl,
  bibkey .tl_gset:N = \g__letgut_bookreview_bibkey_tl,
  reviewer .tl_gset:N = \g__letgut_bookreview_reviewer_tl,
  price .tl_gset:N = \g__letgut_bookreview_price_tl,
title .value_required:n = true,
  frontcover .value_required:n = true,
  bibkey .value_required:n = true,
  reviewer .value_required:n = true,
}
\cs_generate_variant:Nn \msg_warning:nnn { nnV }
\cs_generate_variant:Nn \msg_error:nnnn { nnVV }
\NewDocumentEnvironment{bookreview}{ m }
{
  \keys_set:nn { letgut/bookreview } { #1 }
  \section{\g__letgut_bookreview_title_tl}
  \tl_if_empty:NTF \g__letgut_bookreview_frontcover_tl {
    \msg_warning:nnV{letgut}{frontcover-missing}{
      \g__letgut_bookreview_title_tl
    }
  }{
\clist_map_inline:Nn \Gin@extensions {
      \file_if_exist:nT{\g__letgut_bookreview_frontcover_tl##1}{
        \bool_set_true:N \l_tmpa_bool
        \clist_map_break:
      }
    }
    \bool_if:NTF \l_tmpa_bool {
      \marginpar{
        \hspace*{\c__letgut_bookreview_frontcover_margin_sep_dim}
        % \raggedleft
        \raisebox{-\totalheight}{
          \fbox{
            \includegraphics[width=-\c__letgut_title_hoffset_dim]{
              \g__letgut_bookreview_frontcover_tl
            }
          }
        }
      }
    }{
      \msg_error:nnVV
      {letgut}
      {frontcover-file-not-found}
      {\g__letgut_bookreview_title_tl}
      {\g__letgut_bookreview_frontcover_tl}
    }
  }
  \noindent
  \textsf{\fullcite{\g__letgut_bookreview_bibkey_tl}}
  \tl_if_empty:NF \g__letgut_bookreview_price_tl{
    .\c_space_tl\g__letgut_bookreview_price_tl\c_space_tl €
  }
  \par
}{
  \exp_args:NV \author{\g__letgut_bookreview_reviewer_tl}
}
\DeclareRobustCommand*\LKey[1]{%
\ifx#10\biolinumKeyGlyph{zero}%  % spurious space removed 2016/06/24
\else\ifx#11\biolinumKeyGlyph{one}%
\else\ifx#12\biolinumKeyGlyph{two}%
\else\ifx#13\biolinumKeyGlyph{three}%
\else\ifx#14\biolinumKeyGlyph{four}%
\else\ifx#15\biolinumKeyGlyph{five}%
\else\ifx#16\biolinumKeyGlyph{six}%
\else\ifx#17\biolinumKeyGlyph{seven}%
\else\ifx#18\biolinumKeyGlyph{eight}%
\else\ifx#19\biolinumKeyGlyph{nine}%
\else\ifx#1à\biolinumKeyGlyph{agrave}%
\else\ifx#1À\biolinumKeyGlyph{Agrave}%
\else\ifx#1â\biolinumKeyGlyph{acircumflex}%
\else\ifx#1Â\biolinumKeyGlyph{Acircumflex}%
\else\ifx#1é\biolinumKeyGlyph{eacute}%
\else\ifx#1É\biolinumKeyGlyph{Eacute}%
\else\ifx#1è\biolinumKeyGlyph{egrave}%
\else\ifx#1È\biolinumKeyGlyph{Egrave}%
\else\ifx#1ê\biolinumKeyGlyph{ecircumflex}%
\else\ifx#1Ê\biolinumKeyGlyph{Ecircumflex}%
\else\ifx#1ë\biolinumKeyGlyph{edieresis}%
\else\ifx#1Ë\biolinumKeyGlyph{Edieresis}%
\else\ifx#1î\biolinumKeyGlyph{icircumflex}%
\else\ifx#1Î\biolinumKeyGlyph{Icircumflex}%
\else\ifx#1ï\biolinumKeyGlyph{idieresis}%
\else\ifx#1Ï\biolinumKeyGlyph{Idieresis}%
\else\ifx#1ô\biolinumKeyGlyph{ocircumflex}%
\else\ifx#1Ô\biolinumKeyGlyph{Ocircumflex}%
\else\ifx#1ù\biolinumKeyGlyph{ugrave}%
\else\ifx#1Ù\biolinumKeyGlyph{Ugrave}%
\else\ifx#1û\biolinumKeyGlyph{ucircumflex}%
\else\ifx#1Û\biolinumKeyGlyph{Ucircumflex}%
\else\ifx#1ü\biolinumKeyGlyph{udieresis}%
\else\ifx#1Ü\biolinumKeyGlyph{Udieresis}%
\else\ifx#1ÿ\biolinumKeyGlyph{ydieresis}%
\else\ifx#1Ÿ\biolinumKeyGlyph{Ydieresis}%
\else\ifx#1ç\biolinumKeyGlyph{ccedilla}%
\else\ifx#1Ç\biolinumKeyGlyph{Ccedilla}%
\else\biolinumKeyGlyph{#1}%
\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi}
\hyphenation{GUT-enberg}
\cs_new_protected:Npn \__letgut_issn:
{
  \bool_if:NTF \g__letgut_paper_bool {
    \c__letgut_paper_issn_tl
  }{
    \c__letgut_online_issn_tl
  }
}
\NewDocumentCommand{\letgutissn}{ }{
  \__letgut_issn:
}
\cs_new_protected:Npn \__letgut_unselectable:n #1
{
  \BeginAccSupp{ActualText={}}#1\EndAccSupp{}
}
\colorlet {__letgut_meta} {
  brown
}
\cs_new_protected:Nn \__letgut_meta:nn
{
    \bgroup
    \normalfont
    \ttfamily
    \itshape
    \textcolor{#1}{$\langle$#2$\rangle$}
    \egroup
}
\AddToHook{begindocument/end}{
  \DeclareDocumentCommand{\meta}{ O{__letgut_meta} m } {
    \__letgut_meta:nn {#1}{#2}
  }
}
\lstdefinestyle{__letgut_reset_listings_styles}{
  basicstyle=\ttfamily,
  breaklines,
  language=TeX,%
  texcs={},%
  language={},%
  keywords={},%
  keywords=[2]{},%
  keywords=[3]{},%
  keywords=[4]{},%
  keywords=[5]{},%
  otherkeywords={},%
  alsoletter={},%
  alsodigit={},%
  escapechar=£,
  columns=fullflexible,
  keepspaces=true,
  upquote=true,
  showstringspaces=false,
numbersep=\c__letgut_number_sep_dim,
numberstyle=\scriptsize\ttfamily
\color{__letgut_foregroundLinenumber}
\__letgut_unselectable:n,
aboveskip={0\p@ \@plus 6\p@},
  belowskip={0\p@ \@plus 6\p@},
}
\lstMakeShortInline[breaklines=false]⅛
\lstset{ style=__letgut_reset_listings_styles }
\cs_new_protected:Npn \__letgut_input_article:n #1
{
  \lstset{ style=__letgut_reset_listings_styles }
  \acresetall%
  \file_input:n{#1}%
}
\NewDocumentCommand{\inputarticle}{m}{
  \__letgut_input_article:n { #1 }
}
\colorlet{__letgut_texcs}{blue}
\colorlet{__letgut_comment}{gray}
\colorlet{__letgut_argument_specification_separator}{red}
\colorlet{__letgut_argument_specification}{cyan}
\colorlet{__letgut_mandatory_argument}{purple}
\colorlet{__letgut_environment}{teal}
\colorlet{__letgut_key}{__letgut_mandatory_argument}
\colorlet{__letgut_value}{violet}
\colorlet{__letgut_optional_argument}{__letgut_key}
\colorlet{__letgut_math}{green!50!black}
\def\lstlanguagefiles{
  lstlang0.sty,
  lstlang1.sty,
  lstlang2.sty,
  lstlang3.sty,
  ./\c__letgut_lstlanguage_file_tl,
  ../\c__letgut_lstlanguage_file_tl,
  \c__letgut_lstlanguage_file_tl
}
\lstdefinestyle{__letgut_latex_listings_style}{
  language=TeX,%
  alsolanguage=[AlLaTeX]TeX,%
  alsolanguage=[LaTeX]TeX,%
  alsolanguage=[plain]TeX,%
  alsolanguage=[common]TeX,%
  alsolanguage=[primitive]TeX,%
  alsolanguage=[extLaTeX]TeX,%
  alsolanguage=[classes]TeX,%
  texcsstyle=*\color{__letgut_texcs},
  commentstyle=\color{__letgut_comment}\itshape,
  keywordstyle=    \color{__letgut_argument_specification_separator},
  keywordstyle={[2]\color{__letgut_environment}},
  keywordstyle={[3]\color{__letgut_key}},
  keywordstyle={[4]\color{__letgut_value}},
  keywordstyle={[5]\color{__letgut_argument_specification}},
  keywordstyle={[6]\color{__letgut_key}},
  numbers=left,
deletekeywords={%
  array,center,displaymath,document,enumerate,eqnarray,%
  equation,flushleft,flushright,itemize,list,lrbox,math,minipage,%
  picture,sloppypar,tabbing,tabular,trivlist,verbatim,%
},%
literate=*%
  {\\\\}{{{\color{__letgut_texcs}\textbackslash\textbackslash}}}{2}%
  {\\[}{{\textcolor{__letgut_math}{\textbackslash[}}}{2}%
  {\\]}{{\textcolor{__letgut_math}{\textbackslash]}}}{2}%
  {$}{{\textcolor{__letgut_math}{\$}}}{1}%$
}
\definecolor{__letgut_backgroundCode}{cmyk}{0,0,0,0.04}
\definecolor{__letgut_borderCode}{cmyk}{0,0,0,0.2}
\definecolor{__letgut_foregroundLinenumber}{cmyk}{0,0,0,0.5}
\definecolor{__letgut_foregroundMention}{cmyk}{0,0,0,0}
\definecolor{__letgut_backgroundResult}{cmyk}{0,0,0,0}
\tcbuselibrary{listings,xparse,breakable,skins,hooks}
\tcbset{
  breakable,
  sharp~ corners,
  fonttitle=\sffamily\bfseries,
}
\cs_new_protected:Npn \__letgut_code_result_mention_box:nn #1 #2
{
  \node[
    minimum~ width=1cm,
    minimum~ height=\c__letgut_height_mentions_dim,
    outer~ sep=auto,
    anchor=north~ east,
    fill=__letgut_borderCode
    ]~ at~ (#1)
  {
    \itshape
    \small
    \color{__letgut_foregroundMention}
    \__letgut_unselectable:n {#2}
  };
}
\cs_new_protected:Npn \__letgut_title_code_result_box:n #1
{
  Exemple~ \thetcbcounter
  \tl_if_empty:NF {#1} { \hypersetup{hidelinks} \c_space_tl :~#1 }
}
\cs_new_protected:Nn \__letgut_on_callout_page:nn
{
  \tl_set:Nn \l_tmpa_int {\getpagerefnumber{#1}}
  \tl_set:Nn \l_tmpb_int {\thepage}
  \int_compare:nNnF {\l_tmpa_int} = {\l_tmpb_int}
  {#2}
}
\tl_set:Nn \l__letgut_reference_text_tl {
  Cf.~\vref{\g__letgut_label_ltx_example_str}.
}
\tcbset{
  __letgut_code/.style={
    listing~ options={
      style=__letgut_latex_listings_style,
    },
    every~ float=\raggedleft,
    colback=__letgut_backgroundCode,
    boxrule=0.25mm,
    colframe=__letgut_borderCode,
    sidebyside~ align=top~ seam,
    toprule~ at~ break=0mm,
    bottomrule~ at~ break=0mm,
    colbacktitle=__letgut_borderCode,
    fonttitle=\sffamily\bfseries,
    before~ title={
      \tl_set:Nn \l__letgut__tex_stuff_font_switch_tl {\rmfamily}
    },
title~ addon/.store~ in=\l__letgut_title_addon_tl,
title=\__letgut_title_code_result_box:n {\l__letgut_title_addon_tl},
reference~ text/.code={
    \tl_set:Nn \l__letgut_reference_text_tl {##1}
},
result~ width/.store~ in=\l__letgut_result_width_dim,
result~ width=\linewidth,
},
__letgut_code_result/.style={
  __letgut_code={#1},
  bicolor,
  colbacklower=__letgut_backgroundResult,
  segmentation~ at~ break=false,
  top=\c__letgut_height_mentions_dim,
  middle=\c__letgut_height_mentions_dim,
sidebyside@true/.code={%
  \tcb@sidebysidetrue%
  \tcb@isbreakablefalse%
  \pgfkeysalso{floatplacement=ht}%
  \pgfkeysalso{float}%
  \pgfkeysalso{label={\g__letgut_label_ltx_example_str}}%
  \tl_set:Nx \l_tmpa_tl {
    \getpagerefnumber {
      \g__letgut_callout_label_ltx_example_str
    }
  }
  \tl_set:Nx \l_tmpb_tl {
    \getpagerefnumber {
      \g__letgut_label_ltx_example_str
    }
  }
  \tl_if_eq:NNF \l_tmpa_tl \l_tmpb_tl
  {
    \l__letgut_reference_text_tl
    \tl_set:Nn \l__letgut_reference_text_tl {
      Cf.~\vref{\g__letgut_label_ltx_example_str}.
    }
    \pgfkeysalso{
      drop~ shadow=black,
      grow~ to~ left~ by=4cm,
      boxed~ title~ style={sharp~ corners},
    }
    \pgfkeysalso{after~ title~ app=\c_space_tl (cf.~page~\thepage)}
  }
},%
overlay={
  \iftcb@sidebyside
  \__letgut_code_result_mention_box:nn {segmentation.north} {code}
  \__letgut_code_result_mention_box:nn {interior.north~ east} {résultat}
  \else
  \ifcase\tcbsegmentstate
  % 0 = Box contains only an upper part
  \__letgut_code_result_mention_box:nn {interior.north~ east} {code}
  \or%
  % 1 = Box contains an upper and a lower part
  \__letgut_code_result_mention_box:nn {interior.north~ east} {code
\int_compare:nNnT {\thetcbbreakpart} > {1} {~(suite)}
}
\__letgut_code_result_mention_box:nn {
  [yshift=.1mm]segmentation.east
} {résultat}
\else%
% 2 = Box contains only a lower part
\__letgut_code_result_mention_box:nn {interior.north~ east} {résultat
\int_compare:nNnT {\thetcbbreakpart} > {1} {~(suite)}
}
\fi
\fi
},
},
}
\AddToHook{begindocument/before}{
\DeclareTCBListing[
  auto~ counter,
  crefname={exemple}{exemples}
]{ltx-code}{ !O{} }{%
  __letgut_code,
  listing~ only,
  #1%
}
\DeclareTCBListing[
  use~ counter~ from=ltx-code,
  crefname={exemple}{exemples}
]{ltx-code-result}{ !O{} }{%
  __letgut_code_result,
  #1%
}
\DeclareTCBListing[
  use~ counter~ from=ltx-code,
  crefname={exemple}{exemples}
]{ltx-code-external-result}{ O{} m }{%
  __letgut_code_result,
  listing~ and~ comment,
  image~ comment={width=\l__letgut_result_width_dim}{#2},
  center~ lower,
  #1%
}
}
\skip_const:Nn \c__letgut_orig_intextsep_skip {\intextsep}
\skip_const:Nn \c__letgut_reduced_intextsep_skip {
  4\p@ \@plus .667\p@ \@minus .667\p@
}
\AddToHook{env/ltx-code-result/before}{
  \int_gincr:N \g__letgut_ltx_example_int
  \str_set:Nx \g__letgut_label_ltx_example_str {
    \c__letgut_label_ltx_example_str-
    \int_use:N \g__letgut_ltx_example_int
  }
  \str_set:Nx \g__letgut_callout_label_ltx_example_str {
    \c__letgut_callout_label_ltx_example_str-
    \int_use:N \g__letgut_ltx_example_int
  }
  \label{\g__letgut_callout_label_ltx_example_str}
  \tl_set:Nx \l_tmpa_tl {
    \getpagerefnumber {
      \g__letgut_callout_label_ltx_example_str
    }
  }
  \tl_set:Nx \l_tmpb_tl {
    \getpagerefnumber {
      \g__letgut_label_ltx_example_str
    }
  }
  \tl_if_eq:NNF \l_tmpa_tl \l_tmpb_tl
  {
    \skip_set_eq:NN \intextsep \c__letgut_reduced_intextsep_skip
  }
}
\cs_new_protected:Npn \__letgut_tcbset:n #1
{
  \tcbset{
    __letgut_code/.append~ style={
      listing~ options~ app={
        #1
      }
    }
  }
}
\cs_new_protected:Npn \__letgut_alsolanguage_list:nn #1 #2
{
\lstset{%
    style=__letgut_reset_listings_styles,%
  }
  \tl_if_empty:nTF {#1} {
    \tl_set:Nx \l_tmpa_tl {
      alsolanguage={#2}
    }
    \exp_args:NV \__letgut_tcbset:n
    {
      \l_tmpa_tl
    }
  }{
    \seq_set_from_clist:Nn \l_tmpa_seq {#1}
    \seq_set_map_x:NNn \l_tmpb_seq \l_tmpa_seq {
      alsolanguage={[##1]#2}
    }
    \tl_set:Nx \l_tmpa_tl
    {
      \seq_use:Nn \l_tmpb_seq {,}
    }
    \exp_args:NV \__letgut_tcbset:n
    {
      \l_tmpa_tl
    }
  }
}
\NewDocumentCommand{\syntaxhl}{ O{TeX} m}{%
  \__letgut_alsolanguage_list:nn {#2} {#1}
}
\AddToHook{begindocument/before}{
\definecolor{__letgut_terminal_prompt}{RGB}{204,0,0}
\colorlet{__letgut_terminal_comment}{gray!80}
\definecolor{__letgut_terminal_commands}{RGB}{241,124,81}
\definecolor{__letgut_terminal_keywords}{RGB}{173,127,168}
\definecolor{__letgut_terminal_variables}{RGB}{114,159,207}
\colorlet{__letgut_terminal_utilities}{__letgut_terminal_commands}
\definecolor{__letgut_terminal_strings}{RGB}{78,154,6}
\lstdefinestyle{__letgut_terminal_listings_style}{
  commentstyle=    \color{__letgut_terminal_comment},
  keywordstyle=    \color{__letgut_terminal_commands},
  keywordstyle={[2]\color{__letgut_terminal_keywords}},
  keywordstyle={[3]\color{__letgut_terminal_utilities}},
  stringstyle=     \color{__letgut_terminal_strings},
  literate=*%
  {$}{{\textcolor{__letgut_terminal_variables}{\$}}}{1}%$
}
\lstdefinelanguage{terminal}{%
  morekeywords={%
    alias,bg,bind,break,builtin,caller,cd,command,compgen,%
    complete,compopt,continue,declare,dirs,disown,echo,enable,%
    eval,exec,exit,export,fc,fg,getopts,hash,help,history,%
    jobs,kill,let,local,logout,mapfile,popd,printf,pushd,pwd,%
    read,readarray,readonly,return,set,shift,shopt,source,%
    suspend,test,times,trap,type,typeset,ulimit,umask,unalias,%
    unset,wait,%
  },%
  morekeywords=[2]{%
    case,do,done,elif,else,esac,fi,for,function,if,in,select,%
    then,time,until,while,%
  },%
  morekeywords=[3]{%
    apropos,apt,apt-get,aptitude,aspell,at,awk,base32,base64,%
    basename,bash,bc,bzip2,cal,cat,cfdisk,chattr,chgrp,%
    chkconfig,chmod,chown,chpasswd,chroot,cksum,clear,cmp,comm,%
    cp,cpio,cron,crontab,csplit,curl,cut,date,dc,dd,ddrescue,%
    df,diff,diff3,dig,dir,dircolors,dirname,dmesg,dos2unix,%
    dpkg,du,egrep,eject,env,ethtool,expand,expr,false,fdformat,%
    fdisk,fgrep,file,find,fmt,fold,format,free,fsck,ftp,fuser,%
    gawk,grep,groupadd,groupdel,groupmod,groups,gzip,head,%
    hostname,htop,iconv,id,ifconfig,ifdown,ifup,import,install,%
    iostat,ip,join,killall,less,link,ln,locate,logname,look,%
    lpc,lpr,lprint,lprintd,lprintq,lprm,ls,lsattr,lsblk,lsof,%
    lspci,make,man,mkdir,mkfifo,mkfile,mkisofs,mknod,mktemp,%
    mmv,more,most,mount,mtools,mtr,mv,nc,netstat,nft,nice,nl,%
    nohup,notify-send,nslookup,op,open,passwd,paste,pathchk,%
    Perf,pgrep,ping,pkill,pr,printcap,printenv,ps,pv,quota,%
    quotacheck,ram,rar,rcp,reboot,remsync,rename,renice,rev,rm,%
    rmdir,rsync,scp,screen,sdiff,sed,seq,sftp,shuf,shutdown,%
    sleep,slocate,sort,split,ss,ssh,stat,strace,su,sudo,sum,%
    sync,tail,tar,tee,timeout,tmux,top,touch,tput,tr,%
    traceroute,true,tsort,tty,umount,uname,unexpand,uniq,units,%
    unix2dos,unrar,unshar,uptime,useradd,userdel,usermod,users,%
    uudecode,uuencode,vdir,vi,vmstat,watch,wc,wget,whereis,%
    which,who,whoami,write,xargs,xdg-open,xxd,xz,yes,zip,%
  },%
  alsoletter={2346-},%
  morecomment=[l]\#,%
  morestring=[d]",%
  morestring=[d]',%
  sensitive%
}[keywords,comments,strings]%
\definecolor{__letgut_foreground_terminal_dark}{named}{black}
\colorlet{__letgut_background_terminal_dark_stdin}{
  letgut_pagecolor!95!gray
}
\colorlet{__letgut_background_terminal_dark_stdout}{
  __letgut_background_terminal_dark_stdin!60
}
\definecolor{__letgut_foreground_terminal_light}{named}{black}
\definecolor{__letgut_background_terminal_light_stdin}{rgb}{
  0.99,0.975,0.98
}
\colorlet{__letgut_background_terminal_light_stdout}{
  __letgut_background_terminal_light_stdin!40
}
\bool_if:NTF \g__letgut_paper_bool {
  \colorlet{__letgut_foreground_terminal}{
    __letgut_foreground_terminal_light
  }
  \colorlet{__letgut_background_terminal_stdin}{
    __letgut_background_terminal_light_stdin
  }
  \colorlet{__letgut_background_terminal_stdout}{
    __letgut_background_terminal_light_stdout
  }
}{
  \colorlet{__letgut_foreground_terminal}{
    __letgut_foreground_terminal_dark
  }
  \colorlet{__letgut_background_terminal_stdin}{
    __letgut_background_terminal_dark_stdin
  }
  \colorlet{__letgut_background_terminal_stdout}{
    __letgut_background_terminal_dark_stdout
  }
}
\tcbset{%
  terminal/.style={%
    colupper=__letgut_foreground_terminal,
    collower=__letgut_foreground_terminal,
    breakable,
    segmentation~ at~ break=false,
    boxrule=0mm,
    before~ lower={\tcbset{every~ listing~ line={}}},
    listing~ options={%
      style=__letgut_terminal_listings_style,
      language=terminal,
    },
    every~ listing~ line={%
      \textcolor{__letgut_terminal_prompt}{%
        \ttfamily%
        \bfseries%
        \__letgut_unselectable:n {#1\c_space_tl}
      }
    },
  },
}
\cs_new_protected:Npn \__letgut_terminal:nnnn #1 #2 #3 #4
{
  \bool_set_false:N \l_tmpa_bool
  \tl_if_empty:nF {#3}{
      \tcbset{tempfile=\jobname-stdin.tex}
      \exp_args:Nx \scantokens
      {
        \token_to_str:N\begin{tcbwritetemp}
          #3
        \token_to_str:N\end{tcbwritetemp}
      }
    }
    \tl_if_empty:nF {#4}{
      \tcbset{tempfile=\jobname-stdout.tex}
      \exp_args:Nx \scantokens
      {
        \token_to_str:N\begin{tcbwritetemp}
          #4
        \token_to_str:N\end{tcbwritetemp}
      }
    }
    \tl_if_empty:nTF {#3}{
      \tl_if_empty:nTF {#4}{
        \bool_set_true:N \l_tmpa_bool
      }{
        \tcbset{colback=__letgut_background_terminal_stdout}
      }
    }{
      \tcbset{colback=__letgut_background_terminal_stdin}
      \tl_if_empty:nTF {#4}{
      }{
        \tcbset{
          bicolor,
          middle=0mm,
          boxsep=0mm,
          colbacklower=__letgut_background_terminal_stdout,
        }
      }
    }
    \bool_if:NF \l_tmpa_bool {
      \begin{tcolorbox}[terminal={#1},#2]
        \lstset{aboveskip=0pt}
        \tl_if_empty:nF {#3}{
          \tcbset{
            tempfile=\jobname-stdin.tex,
          }
          \tcbusetemplisting
          \tl_if_empty:nF {#4}{
            \tcblower
          }
        }
        \tl_if_empty:nF {#4}{
          \tl_if_empty:nF {#3}{
            \lstset{aboveskip=0pt}
          }
          \tcbset{
            tempfile=\jobname-stdout.tex,
            every~ listing~ line={},
            listing~ options~ app={
              language={}
            }
          }
          \tcbusetemplisting
        }
      \end{tcolorbox}
    }
  }
  \NewDocumentCommand{\terminal}{ O{\$} O{} +v +v}{
    \__letgut_terminal:nnnn {#1} {#2} {#3} {#4}
  }
}
\lst@InputCatcodes
\def\lst@DefEC{%
 \lst@CCECUse \lst@ProcessLetter
  ^^80^^81^^82^^83^^84^^85^^86^^87^^88^^89^^8a^^8b^^8c^^8d^^8e^^8f%
  ^^90^^91^^92^^93^^94^^95^^96^^97^^98^^99^^9a^^9b^^9c^^9d^^9e^^9f%
  ^^a0^^a1^^a2^^a3^^a4^^a5^^a6^^a7^^a8^^a9^^aa^^ab^^ac^^ad^^ae^^af%
  ^^b0^^b1^^b2^^b3^^b4^^b5^^b6^^b7^^b8^^b9^^ba^^bb^^bc^^bd^^be^^bf%
  ^^c0^^c1^^c2^^c3^^c4^^c5^^c6^^c7^^c8^^c9^^ca^^cb^^cc^^cd^^ce^^cf%
  ^^d0^^d1^^d2^^d3^^d4^^d5^^d6^^d7^^d8^^d9^^da^^db^^dc^^dd^^de^^df%
  ^^e0^^e1^^e2^^e3^^e4^^e5^^e6^^e7^^e8^^e9^^ea^^eb^^ec^^ed^^ee^^ef%
  ^^f0^^f1^^f2^^f3^^f4^^f5^^f6^^f7^^f8^^f9^^fa^^fb^^fc^^fd^^fe^^ff%
  ^^^^201c^^^^201d% for “ and ”
  ^^^^215b% for ⅛
  ^^00%
}
\lst@RestoreCatcodes
\file_if_exist:nT {./\c__letgut_local_config_file_tl}{
  \use:n { \ExplSyntaxOff \file_input:n {./\c__letgut_local_config_file_tl} }
  \ExplSyntaxOn
}
\ExecuteBibliographyOptions[bookreview]{skipbib,skiplab}
\endinput
