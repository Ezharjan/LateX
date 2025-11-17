%%
%% This is file `README.txt',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% canoniclayout.dtx  (with options: `txt')
%%   ______________________________________________________
%%   The canoniclayout package for LaTeX
%%   Copyright (C) 2010-2020 Claudio Beccari
%%   All rights reserved
%% 
%%   License information appended
%% 
\ProvidesFile{README.txt}
   [2020-04-09 v.0.5 Canonic layout circumscribed to a circle]


Canoniclayout is a small extension package that allows to design
a canonic layout based on the great circle inscribed within the
page and tangent to the horizontal sides of the type block rectangle.
The margins reflect the trimmed page shape ratio, therefore the
type block principal diagonal coincides with the corresponding
page diagonal; this layout is especially good for ISO page shapes
but it can be used with many other traditional book page shapes.

This new version is completely new, in the sense that its code
calculations are performed by means of the 2018 xfp package
facilities. For this reason it cannot be used with any TeX
distribution preceding the year 2018 and updated by the end of
that year; should this happen this very package aborts its own
input while advising the user by means of an Error Message.

This work is released under  the Latex Project Public Licence
v.1.3c. The LPPL is distributed with any TeX system distribution
and can be found also in any CTAN archive.

Claudio Beccari 2020
claudio dot beccari at gmail dot com

%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work consists of this file canoniclayout.dtx, a README.txt file
%% and the derived files canoniclayout.sty and canoniclayout.pdf.
%% 
%% This work is "maintained"
%% 
%%
%% End of file `README.txt'.
