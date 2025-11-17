# pst-vehicle: creating vehicles for physical animations

This package was created to illustrate the notion of slope, the coefficient 
of the tangent line at a point of a curve. On the road, a rampant way or a 
dangerous descent due to their slope is indicated by a sign showing the 
percentage of the slope of this section of road, for example 10%. 

It was therefore quite obvious that the idea of representing a vehicle rolling 
without slipping on a curve came into our minds. Different types of vehicles 
are proposed, the shape of the curve is to be defined by its equation: $y=f(x)$ 
in algebraic notation.

Save the files pst-vehicle.sty|data|tex in a directory, which is part of your 
local TeX tree. The pro file should go into $TEXMF/dvips/pstricks/
Then do not forget to run texhash to update this tree.

pst-vehicle needs pstricks, which should be part of your local TeX installation, 
otherwise get it from a CTAN server, https://mirror.ctan.org

PSTricks is PostScript Tricks, the documentation cannot be run
with pdftex, use the sequence latex->dvips->ps2pdf or
pdflatex with package auto-pst-pdf or xelatex or (best) lualatex

This program can redistributed and/or modified under %%
the terms of the LaTeX Project Public License        %%
Distributed from CTAN archives in directory          %%
macros/latex/base/lppl.txt; either version 1.3c of   %%
the License, or (at your option) any later version.  %%

Thomas Söll
Bugs: hvoss@tug.org

%% $Id: README.md 819 2018-09-26 06:40:48Z herbert $
