The `hfutthesis` Class
=====================

*LaTeX thesis template for Hefei University of Technology, v1.0.4*

Overview
--------

[![GitHub release](https://img.shields.io/github/release/HFUTTUG/HFUT_Thesis/all.svg)](https://github.com/HFUTTUG/HFUT_Thesis/releases/latest)
[![Overleaf](https://img.shields.io/badge/overleaf-hfutthesis-brightgreen.svg)](https://www.overleaf.com/latex/templates/hfut-thesis/ythwdqdkpvkp)
[![GitHub commits](https://img.shields.io/github/commits-since/HFUTTUG/HFUT_Thesis/latest.svg)](https://github.com/HFUTTUG/HFUT_Thesis/commits/master)
![visitors](https://visitor-badge.glitch.me/badge?page_id=HFUTTUG.Thesis)


This project is based on the thesis LaTeX template [HFUT_Thesis](https://github.com/HFUTTUG/HFUT_Thesis) of Hefei University of Technology compiled on the basis of [ustctug/ustcthesis](https://github.com/ustctug/ustcthesis), in accordance with the latest version of "[Hefei University of Technology Graduate Dissertation Writing Specifications](http://xwgl.hfut.edu.cn/2021/0419/c1975a253949/page.htm)" and "[Hefei University of Technology Undergraduate Graduation Project (Thesis) Work Implementation Rules](https://github.com/HFUTTUG/HFUT_Thesis/files/8790494/2022.1.pdf)" It is compatible with the latest version of TeX Live, MacTeX, MiKTeX distribution, and supports cross-platform use.

The documentation can be found in
[hfutthesis-doc.pdf](http://mirrors.ctan.org/macros/latex/contrib/hfutthesis/hfutthesis-doc.pdf).

GitHub re­pos­i­tory: <https://github.com/HFUTTUG/HFUT_Thesis>.

Notice:
----

1. The instruction document `hfutthesis-doc.pdf` is included in the release version, and users can also compile it by themselves; **should read carefully before using the template**.

2. This template requires TeX Live, MacTeX, MiKTeX to be at least the 2017 release, and to be upgraded to the latest as much as possible. For installation and upgrade methods, see [Beginner's Guide](https://github.com/HFUTTUG/HFUT_Thesis/wiki/新手指南).

3. **NOT SUPPORTED** [CTeX package](https://github.com/HFUTTUG/HFUT_Thesis/wiki/常见问题#1-模板支持用-ctex-套装编译吗).

Usage
-----
- Compile the template usage documentation `hfutthesis-doc.pdf`:
   ```
   latexmk -xelatex hfutthesis-doc.tex
   ```
- Compile the paper `hfutthesis-example.pdf`:
   ```
   latexmk -xelatex hfutthesis-example.tex
   ```
- To clean up temporary files during the compilation of the paper, you can:
   ```
   latexmk -c
   ```

Contributing
------------

[Issues](https://github.com/HFUTTUG/HFUT_Thesis/issues) and
[pull requests](https://github.com/HFUTTUG/HFUT_Thesis/pulls)
are always welcome.

License
-------

This work may be distributed and/or modified under the conditions of
the [LaTeX Project Public License](http://www.latex-project.org/lppl.txt),
either version 1.3c of this license or (at your option) any later
version.


Last but not least
--------

- Thanks to [ustctug/ustcthesis](https://github.com/ustctug/ustcthesis).
- Students who are interested in joining [@HFUTTUG](https://github.com/HFUTTUG) can send [Email](mailto:hfuttug@163.com).

-----

Copyright (C) 2017&ndash;2020 by HFUTTUG <hfuttug@163.com>.