%%%% README.txt file
This README.txt for package wrapfig2[2022-02-16 v.6.0.0 ...]

This work is author maintained

This work consists of wrapfig2.dtx, the main file, this README.txt
and the derived files wrapfig2.pdf and wrapfig2.sty.

The package besides  the source documented source file contains the
image file commodilla.jpg, a slightly cropped image downloaded from 
the internet site of the Bibliotheca Augustiana in Germany. Apparently
this image is free provided the source is duly acknowledged.

Licence appended to the wrapfig2.sty file.

The software contained herein is a fork of Donald Arseneau wrapfig
package. It uses most of his code, but adds a new environment, 
wraptext, to the existing wrapfigure and wraptable ones. 

Supposedly this software is backwards compatible with Arseneau's
original environments. Future experience may confirm this statement.

The user commands are defined by means of the LaTeX3 functionalities.
Therefore this package does not work with LaTeX2e kernels older than  
about 2018, although a warning is issued if the LaTeX format file is 
older than 1st January 2019. In any case this package loading is 
aborted in order to avoid conflicts, and in some other circumstances; 
the error messages describe why the process was aborted. 

Version 6 of this package accepts options in the form key=value. 
Options are available to fall back to version 5 and version 4.

Claudio Beccari

claudio dot beccari at gmail dot com