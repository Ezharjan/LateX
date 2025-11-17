#! /usr/bin/env python3
# This file is part of the Gentium package for TeX.
# It is licensed under the Expat License, see doc//README for details.

import os
import sys

creatortext = "Comment Creator: TeX Users Group\n"

tempname = "temp.afm"

with open(sys.argv[1], "r") as fin, open(tempname, "w") as fout:
    for line in fin:
        fout.write(line)
        if line.startswith("Comment Creation Date"):
            fout.write(creatortext)  # Creator after Creation Date

os.rename(tempname, sys.argv[1])
