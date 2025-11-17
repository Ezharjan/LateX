# luafindfont

Searching for fonts in the font database. It needs Lua 5.3 which
will be included in at least LuaTeX 1.09 (TeXLive 2019)

## Usage
The syntax of `luafindfont`

```
luafindfont [options] <font name> 
```

parameter handling
-    -h,--help
-    -o,--otfinfo (default 0)
-    -i,--info (default 0)
-    -x,--xetex
-    -v,--verbose
-    -m,--max_string (default 90)
-    -n,--nosymbolicnames
-    <font> (string)  


## Examples:

```
-luafindfont times 
-luafindfont palatino -o 3
-luafindfont -i 3 -m 50 arial
```

## Copyright
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.


hvoss@tug.org
