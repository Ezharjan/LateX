-- -*- coding: utf-8 ; -*-
--
-- This is file 'piton.lua' which is a part of the Latex package 'piton'
-- Copyright (C) 2022 by F. Pantigny

-- This file may be distributed and/or modified under the
-- conditions of the Latex Project Public License, either
-- version 1.3 of this license or (at your option) any later
-- version.  The latest version of this license is in:
-- 
--      http://www.Latex-project.org/lppl.txt
-- 
-- and version 1.3 or later is part of all distributions of
-- Latex version 2005/12/01 or later.


-- This file is part of the version 0.6a of the package 'piton'

local P, S, V , C , Ct, Cc, Cf = lpeg.P, lpeg.S, lpeg.V, lpeg.C, lpeg.Ct, lpeg.Cc, lpeg.Cf


--[[ By convention, a capture which provides as value a table (and not a string), provides, in fact,
a string (the first element of the table) which is a formatting LaTeX instruction (it will be
thrown back to TeX with normal catcodes (ant not ``other'' catcode for everybody).]]

local function L(string)
  return lpeg.Cc ( { string } ) 
end 

local function K(pattern, style)
  return 
     L ( "{\\PitonStyle{" .. style .. "}{" )
     * lpeg.C(pattern)
     * L ( "}}" )
end


--[[ The text in "escape" (between begin_escape and end_escape) is captured
and put in a table (with only one component). Indeed, we have decided that a capture
which is encapsulated in a table must be transmitted to TeX with the normal TeX catcodes.]]

local Escape = P(begin_escape)
               * Ct ( C ( ( 1 - P(end_escape) ) ^ 1 ) )
	       * P(end_escape)

local EOL = ( P "\r" ) * L ( "\\pitonEOL" )



lpeg.locale(lpeg) -- mandatory

local alpha , digit , space , punct = lpeg.alpha , lpeg.digit , lpeg.space , lpeg.punct

local letter = alpha + S"âàçéèêëïîôûüÂÀÇÉÈÊËÏÎÔÛÜ_" 

local alphanum = letter + digit

local identifier = letter * alphanum ^ 0

local Identifier = C ( identifier )

local Space = C ( ( space - P "\r" ) ^ 1 )

local SkipSpace = C ( ( space - P "\r" ) ^ 0 )

local Punct = C ( punct )


local Number =
   K (
       ( digit^1 * P "." * digit^0 + digit^0 * P "." * digit^1 + digit^1 )
       * ( S "eE" * S "+-" ^ -1 * digit^1 ) ^ -1
       + digit^1 
       , 'Number' ) 

local Word = C ( ( ( 1 - space ) - S "'\"\r[()]" - digit ) ^ 1 )

local Delim = C ( S "[()]" )


local Keyword = 
   K ( P "assert" + P "break" + P "case" + P "continue" + P "del"
       + P "elif" + P "else" + P "except" + P "exec" + P "finally" + P "for" + P "from" 
       + P "global" + P "if" + P "import" + P "lambda" + P "non local"
       + P "pass" + P "return" + P "try" + P "while"
       + P "with" + P "yield" + P "yield from" ,
   'Keyword' )
   + K ( P "True" + P "False" + P "None" , 'Keyword.Constant' ) 


local Builtin = 
   K ( P "__import__" + P "abs" + P "all" + P "any" + P "bin" + P "bool" + P "bytearray"
     + P "bytes" + P "chr" + P "classmethod" + P "compile" + P "complex" + P "delattr"
     + P "dict" + P "dir" + P "divmod" + P "enumerate" + P "eval" + P "filter"
     + P "float" + P "format" + P "frozenset" + P "getattr" + P "globals" + P "hasattr"
     + P "hash" + P "hex" + P "id" + P "input" + P "int" + P "isinstance" + P "issubclass"
     + P "iter" + P "len" + P "list" + P "locals" + P "map" + P "max" + P "memoryview" + P "min"
     + P "next" + P "object" + P "oct" + P "open" + P "ord" + P "pow" + P "print" + P "property"
     + P "range" + P "repr" + P "reversed" + P "round" + P "set" + P "setattr" + P "slice"
     + P "sorted" + P "staticmethod" + P "str" + P "sum" + P "super" + P "tuple" + P "type"
     + P "vars" + P "zip" ,
   'Name.Builtin' )


local Exception =
   K ( "ArithmeticError" + P "AssertionError" + P "AttributeError"
    + P "BaseException" + P "BufferError" + P "BytesWarning" + P "DeprecationWarning"
    + P "EOFError" + P "EnvironmentError" + P "Exception" + P "FloatingPointError"
    + P "FutureWarning" + P "GeneratorExit" + P "IOError" + P "ImportError"
    + P "ImportWarning" + P "IndentationError" + P "IndexError" + P "KeyError"
    + P "KeyboardInterrupt" + P "LookupError" + P "MemoryError" + P "NameError"
    + P "NotImplementedError" + P "OSError" + P "OverflowError"
    + P "PendingDeprecationWarning" + P "ReferenceError" + P "ResourceWarning"
    + P "RuntimeError" + P "RuntimeWarning" + P "StopIteration"
    + P "SyntaxError" + P "SyntaxWarning" + P "SystemError" + P "SystemExit"
    + P "TabError" + P "TypeError" + P "UnboundLocalError" + P "UnicodeDecodeError"
    + P "UnicodeEncodeError" + P "UnicodeError" + P "UnicodeTranslateError"
    + P "UnicodeWarning" + P "UserWarning" + P "ValueError" + P "VMSError"
    + P "Warning" + P "WindowsError" + P "ZeroDivisionError"
    + P "BlockingIOError" + P "ChildProcessError" + P "ConnectionError"
    + P "BrokenPipeError" + P "ConnectionAbortedError" + P "ConnectionRefusedError"
    + P "ConnectionResetError" + P "FileExistsError" + P "FileNotFoundError"
    + P "InterruptedError" + P "IsADirectoryError" + P "NotADirectoryError"
    + P "PermissionError" + P "ProcessLookupError" + P "TimeoutError"
    + P "StopAsyncIteration" + P "ModuleNotFoundError" + P "RecursionError" ,
   'Exception' )

local RaiseException = K ( P "raise" , 'Keyword' ) * SkipSpace * Exception * C ( P "(" ) 

local ExceptionInConsole = Exception *  C ( ( 1 - P "\r" ) ^ 0 ) * EOL  


local Namespace =
   K ( P "from" , 'Keyword' ) * Space * K ( alphanum^1 , 'Name.Namespace' )
   *  ( Space * K ( P "import" , 'Keyword' ) ) ^ -1


local ImportAs = K ( P "import" , 'Keyword' )
                  * Space
		  * K ( identifier , 'Name.Namespace' )
		  * ( SkipSpace * C ( P "," ) * SkipSpace * K ( identifier , 'Name.Namespace' ) ) ^ 0 
		  * (
		      Space * K ( P "as" , 'Keyword' ) * Space * K ( identifier , 'Name.Namespace' )
		    ) ^ 0 

local Class = K ( P "class" , 'Keyword' ) * Space * K ( identifier , 'Name.Class' )

local Decorator = K ( P "@" * letter^1 , 'Name.Decorator' ) 

local SingleShortInterpol =
    K ( P "{" , 'String.Interpol')
  * K ( ( 1 - S "}':" ) ^ 0 , 'Interpol.Inside' )
  * C ( P ":" * (1 - S "}:'") ^ 0 ) ^ -1
  * K ( P "}" , 'String.Interpol' )

local DoubleShortInterpol =
    K ( P "{" , 'String.Interpol' )
  * K ( ( 1 - S "}\":" ) ^ 0 , 'Interpol.Inside' )
  * ( K ( P ":" , 'String.Interpol' ) * C ( (1 - S "}:\"") ^ 0 ) ) ^ -1
  * K ( P "}" , 'String.Interpol' )

local SingleLongInterpol =
    K ( P "{" , 'String.Interpol' )
  * K ( ( 1 - S "}:\r" - P "'''" ) ^ 0 , 'Interpol.Inside' )
  * C ( P ":" * (1 - S "}:\r" - P "'''" ) ^ 0 ) ^ -1
  * K ( P "}" , 'String.Interpol' )

local DoubleLongInterpol =
    K ( P "{" , 'String.Interpol' )
  * K ( ( 1 - S "}:\r" - P "\"\"\"" ) ^ 0 , 'Interpol.Inside' )
  * C ( P ":" * (1 - S "}:\r" - P "\"\"\"" ) ^ 0 ) ^ -1
  * K ( P "}" , 'String.Interpol' )

local SingleShortPureString = C ( ( P "\\'" + P "{{" + P "}}" + 1 - S "{}'" ) ^ 1 )

local DoubleShortPureString = C ( ( P "\\\"" + P "{{" + P "}}" + 1 - S "{}\"" ) ^ 1 )

local SingleLongPureString = C ( ( 1 - P "'''" - S "{}'\r" ) ^ 1 )

local DoubleLongPureString = C ( ( 1 - P "\"\"\"" - S "{}\"\r" ) ^ 1 ) 

local SingleShortString =
    L ( "{\\PitonStyle{String.Short}{" )
     * (
           C ( P "f'" + P "F'" ) 
           * ( SingleShortInterpol + SingleShortPureString ) ^ 0 
           * C ( P "'" )
         + 
           C ( ( P "'" + P "r'" + P "R'" ) * ( P "\\'" + 1 - S "'\r" ) ^ 0 * P "'" )
       )
     * L ( "}}" ) 

local DoubleShortString =
    L ( "{\\PitonStyle{String.Short}{" )
     * (
           C ( P "f\"" + P "F\"" ) 
           * ( DoubleShortInterpol + DoubleShortPureString ) ^ 0 
           * C ( P "\"" )
         +
           C ( ( P "\"" + P "r\"" + P "R\"" ) * ( P "\\\"" + 1 - S "\"\r" ) ^ 0 * P "\"" )
       )
     * L ( "}}" ) 


local ShortString = SingleShortString + DoubleShortString


local SingleLongString =
      L "{\\PitonStyle{String.Long}{" 
       * (
      	     C ( S "fF" * P "'''" )
      	     * ( SingleLongInterpol + SingleLongPureString ) ^ 0
	     * L "}}" 
      	     * (
	         EOL
	         + 
      	         L "{\\PitonStyle{String.Long}{" 
      	         * ( SingleLongInterpol + SingleLongPureString ) ^ 0
      	         * L "}}"
      	         * EOL
      	       ) ^ 0 
      	     * L "{\\PitonStyle{String.Long}{" 
      	     * ( SingleLongInterpol + SingleLongPureString ) ^ 0
           +
	     C ( ( S "rR" ) ^ -1  * P "'''" * ( 1 - P "'''" - P "\r" ) ^ 0 ) 
      	     * L "}}" 
      	     * (
      	         L "{\\PitonStyle{String.Long}{" 
      	         * C ( ( 1 - P "'''" - P "\r" ) ^ 0 )
      	         * L "}}" 
      	         * EOL
      	       ) ^ 0 
      	     * L "{\\PitonStyle{String.Long}{" 
      	     * C ( ( 1 - P "'''" - P "\r" ) ^ 0 )
          )
       * C ( P "'''" )
       * L "}}" 


local DoubleLongString =
      L "{\\PitonStyle{String.Long}{" 
       * (
      	     C ( S "fF" * P "\"\"\"" )
      	     * ( DoubleLongInterpol + DoubleLongPureString ) ^ 0
	     * L "}}" 
      	     * (
	         EOL
	         + 
      	         L "{\\PitonStyle{String.Long}{" 
      	         * ( DoubleLongInterpol + DoubleLongPureString ) ^ 0
      	         * L "}}" 
      	         * EOL
      	       ) ^ 0 
      	     * L "{\\PitonStyle{String.Long}{" 
      	     * ( DoubleLongInterpol + DoubleLongPureString ) ^ 0
           +
	     C ( ( S "rR" ) ^ -1  * P "\"\"\"" * ( 1 - P "\"\"\"" - P "\r" ) ^ 0 ) 
      	     * L "}}" 
      	     * (
      	         L "{\\PitonStyle{String.Long}{" 
      	         * C ( ( 1 - P "\"\"\"" - P "\r" ) ^ 0 )
      	         * L "}}" 
      	         * EOL
      	       ) ^ 0 
      	     * L "{\\PitonStyle{String.Long}{" 
      	     * C ( ( 1 - P "\"\"\"" - P "\r" ) ^ 0 )
          )
       * C ( P "\"\"\"" )
       * L "}}" 



local LongString = SingleLongString + DoubleLongString


local Expression =
    P { "E" ,
         E = ( 1 - S "{}()[]\r," ) ^ 0
	     *  (
	          (   P "{" * V "F" * P "}"
	            + P "(" * V "F" * P ")"
		    + P "[" * V "F" * P "]" ) * ( 1 - S "{}()[]\r," ) ^ 0
		) ^ 0 ,
	 F = ( 1 - S "{}()[]\r\"'" ) ^ 0
	     * ( (
	             P "'" * (P "\\'" + 1 - S"'\r" )^0 * P "'"
                   + P "\"" * (P "\\\"" + 1 - S"\"\r" )^0 * P "\""
	           + P "{"  * V "F" * P "}"
		   + P "(" * V "F" * P ")"
		   + P "[" * V "F" * P "]"
	         ) * ( 1 - S "{}()[]\r\"'" ) ^ 0 ) ^ 0 , 
      }

local Param = SkipSpace * K ( identifier , '' ) * SkipSpace
                     *  ( K ( P "=" * Expression , 'InitialValues' )
		          +  K ( P ":" , '' ) * SkipSpace * K ( letter^1 , 'Name.Type' ))
		  + SkipSpace * K ( alphanum ^ 1 , '' ) * SkipSpace 

local Params =  Param * (  K ( P "," , '' ) * Param ) ^ 0

local StringDoc = K ( P "\"\"\"" , 'String.Doc' )
                      * ( K ( (1 - P "\"\"\"" - P "\r" ) ^ 0 , 'String.Doc' ) * EOL ) ^ 0
                      * K ( ( 1 - P "\"\"\"" - P "\r" ) ^ 0 * P "\"\"\"" , 'String.Doc' )
		  + K ( P "'''" , 'String.Doc' )
                      * ( K ( (1 - P "'''" - P "\r")^0 , 'String.Doc' ) * EOL ) ^ 0
                      * K ( ( 1 - P "'''" - P "\r")^0 * P "'''" , 'String.Doc' )

local CommentMath = P "$" * K ( ( 1 - S "$\r" ) ^ 1 , 'Comment.Math' ) * P "$"


local Comment = L ( "{\\pitonStyleComment {" ) 
		* C ( P "#" ) * ( CommentMath + C ( ( 1 - S "$\r" ) ^ 1 ) ) ^ 0
                * L ( "}}" )
		* ( EOL + -1 )

local CommentLaTeX =
   P "##"
   * L "{\\PitonStyle{Comment.LaTeX}{\\ignorespaces" 
   * Ct ( C ( ( 1 - P "\r" ) ^ 0 ) ) 
   * L "}}" 
   * ( EOL + -1 ) 

local DefFunction =
   K ( P "def" , 'Keyword' )
     * Space
     * K ( identifier , 'Name.Function' ) 
     * ( SkipSpace * K ( P "(" , '' ) * Params * K ( P ")" , '' ) ) ^ -1
     * ( SkipSpace
          * K ( ( 1 - S ":\r" )^0 , 'Post.Function' ) 
          * K ( P ":" , 'Keyword' )
          * SkipSpace
	  * ( EOL + CommentLaTeX + Comment )
          * SkipSpace
	  * StringDoc ) ^ -1

local ItemDict = ShortString * SkipSpace * C ( P ":" ) * K ( Expression , 'Dict.Value' ) 

local ItemOfSet = SkipSpace * ( ItemDict + ShortString ) * SkipSpace 

local Set = C ( P "{" ) 
            * ItemOfSet * ( C ( P "," ) * ItemOfSet )  ^ 0 
            * C ( P "}" )


local Operator = K ( P "!=" + P "==" + P "<<" + P ">>" + S "-~+/*%=<>&.@|" , 'Operator')

local OperatorWord = K ( P "in" + P "is" + P "and" + P "or" + P "not" , 'Operator.Word')

local SyntaxPython =
      ( ( space - P "\r" ) ^0 * P "\r" ) ^ -1 * 
      (  ( space^1 * -1 ) 
         + EOL
	 + Space
	 + Escape 
	 + CommentLaTeX
	 + LongString 
	 + Comment
         + ExceptionInConsole
         + Set 
	 + Delim
	 + Class * ( Space + Punct + EOL )
	 + Namespace * ( Space + Punct + EOL )
         + ImportAs
	 + RaiseException 
         + Keyword * ( Space + Punct + EOL )
         + DefFunction
         + ShortString
	 + Decorator * ( Space + Punct + EOL )
	 + Operator
	 + OperatorWord * ( Space + Punct + EOL ) 
	 + Builtin * ( Space + Punct + EOL )
	 + Identifier 
	 + Number
	 + Word
      ) ^0 * -1 


local MinimalSyntax =
  P { "S" ;
      S = K ( (1 - P "\r" ) ^ 0 , '') + EOL * S
    }


--- with cctab, all characters including spaces have catcode 12
local cctab = luatexbase.catcodetables.CatcodeTableOther

function Parse(code)
  local t = Ct(SyntaxPython) : match(code)
  if t then else t = Ct(MinimalSyntax) : match(code) end   
  for i = 1 , #t do
    if type(t[i]) == 'string'
    then
      tex.sprint(cctab, t[i])
    else
      tex.sprint( t[i][1] )
    end 
  end
end




function ParseFile(name)
  s = ''
  for line in io.lines(name) do s = s .. '\r' .. line end
  Parse(s) 
end


function define_gobble_syntax(n) 
  GobbleSyntax = ( 1 - P "\r" ) ^ (-n)  * C ( ( 1 - P "\r" ) ^0 ) 
               * ( C ( P "\r" )
	           * ( 1 - P "\r" ) ^ (-n)
		   * C ( ( 1 - P "\r" ) ^0 )
		 ) ^ 0
end 

function GobbleParse(code)
  local t = Ct(GobbleSyntax):match(code)
  local new_code = ""
  for i = 1 , #t do
    new_code = new_code .. t[i]
  end
  Parse(new_code)
end


function min(x,y)
  if x <= y
  then return x
  else return y
  end
end

function add(acc,new_value)
  return acc + new_value
end 


--[[ The following LPEG returns as capture the minimal number of spaces at
the beginning of the lines of code]]
AutoGobbleSyntax = 
    ( space ^ 0 * P "\r" ) ^ -1 
    * Cf (
           (
	     ( P " " ) ^ 0 * P "\r"
	     + 
	     Cf ( Cc(0) * ( P " " * Cc(1) ) ^ 0 , add )
             * ( 1 - P " " ) * ( 1 - P "\r" ) ^ 0 * P "\r"
	   ) ^ 0
           *
           ( Cf ( Cc(0) * ( P " " * Cc(1) ) ^ 0 , add )
           * ( 1 - P " " ) * ( 1 - P "\r" ) ^ 0 ) ^ -1 ,
	   min
         )

function AutoGobbleParse(code)
  local n = AutoGobbleSyntax:match(code)
  if n==0
  then Parse(code)
  else define_gobble_syntax(n)
       GobbleParse(code) 
  end 
end


--[[ The following LPEG returns as capture the number of spaces at the last line,
that is to say begin the \end{Piton} ]]

EnvGobbleSyntax =
       ( ( 1 - P "\r" ) ^ 0 * P "\r" ) ^ 0 
         * Cf ( Cc(0) * ( P " " * Cc(1) ) ^ 0 , add ) * -1

function EnvGobbleParse(code)
  local n = EnvGobbleSyntax:match(code)
  if n==0
  then Parse(code)
  else define_gobble_syntax(n)
       GobbleParse(code) 
  end 
end



  








