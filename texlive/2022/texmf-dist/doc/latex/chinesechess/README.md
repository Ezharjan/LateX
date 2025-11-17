Chinese chess manual writing package based on l3draw
=======

`chinesechess` is a LaTeX3 package developed based on l3draw, which provides macros and environment for Chinese chess manual writing.

You can read the manual (in Chinese) for more details and examples.

Contributing
------------

1. github repository:
    1. repository: [chinesechess](https://github.com/registor/chinesechess)
    2. Issues and pull requests are welcome. [issue](https://github.com/registor/chinesechess/issues) or [pull request](https://github.com/registor/chinesechess/pulls).

2. gitee repository:
    1. repository: [chinesechess](https://gitee.com/nwafu_nan/chinesechess)
    2. Issues and pull requests are welcome. [issue](https://gitee.com/nwafu_nan/chinesechess/issues) or [pull request](https://gitee.com/nwafu_nan/chinesechess/pulls).

基于l3draw的中国象棋棋谱排版宏包
=======

`chinesechess`是一个基于l3draw用LaTeX3开发的中国象棋棋谱排版宏包，它提供了用于排版中国象棋棋谱的命令和环境。

可以通过阅读宏包手册以了解该宏包更多的使用细节和使用样例。

## 排版示例

```latex
% 由于fandol字体无红棋的砲字，因此请选用合适的字体
% K=帅,A=仕,E=相,R=车,C=砲,H=马,P=兵, k=将,a=士,e=象,r=車,c=炮,h=馬,p=卒
% 水平定位: a(0),b(1),c(2),d(3),e(4),f(5),g(6),h(7),i(8)
% 垂直定位: a(0),b(1),c(2),d(3),e(4),f(5),g(6),h(7),i(8),j(9)
% 棋子定位时，可以混合使用字母和数字，以下示例使用混合输入
% 强烈建议在实际使用中使用纯字母或纯数字定位

% 输出带所有棋子的棋盘命令
\cchessboard
% 若仅需要输出不带棋子的棋盘，请使用带星命令
\cchessboard*

% 排版棋谱命令
\cchessman{ {{4,0}{K}}, {{2,2}{p}}, {{1,7}{C}}, {{4,9}{k}} }

% 排版打谱过程的环境
\begin{setcchessman}[boardtype=x+tn]
  % 残局初始化
  \init{ {{4,0}{K}}, {{2,2}{p}},
         {{1,7}{C}}, {{4,9}{k}} }
  % 添加棋子
  \set{e,d}{P} \set{8,g}{h}
  % 删除棋子
  \del{4,3}
  % 移动棋子
  \mov{C}{b,h}{b,b}
  \mov{p}{2,2}{3,2}
\end{setcchessman}

% 可以使用带星号的打谱环境，
% 此时可以用label标签标记该打谱环境。
% 然后在需要的位置用`\printman{label}`输出打谱结果
\begin{setcchessman*}[boardtype=x+tn, label=test]
  % 残局初始化
  \init{ {{4,0}{K}}, {{2,2}{p}},
         {{1,7}{C}}, {{4,9}{k}} }
  % 添加棋子
  \set{e,d}{P} \set{8,g}{h}
  % 删除棋子
  \del{4,3}
  % 移动棋子
  \mov{C}{b,h}{b,b}
  \mov{p}{2,2}{3,2}
  \mov{K}{4,0}{4,1}
  \mov{h}{8,6}{6,7}
  \mov{K}{4,1}{3,1}
  \mov{h}{6,7}{5,5}
\end{setcchessman*}

\printman{test}
```
## 使用方法

宏包中可以设置棋谱外观。

```tex
\cchessset{
  boardtype = x+tn
}
```

宏包可用选项有：
- `gridsize` 棋盘单元格尺寸(需有长度单位)
- `boardtype` 棋盘类型，可以有x--简约型，x+--带兵、炮位标记和九宫线，x+t--带兵、炮位和九宫线及楚河汉界，x+tn--带兵、炮位、九宫线、楚河汉界及数字线位，x+Xtn--带兵、炮位、九宫线、象位线及楚河汉界
- `boardlinewd` 棋盘线条宽度
- `boardlinecolor` 棋盘线条颜色
- `boardbg` 棋盘背景图片路径及文件名
- `resize` 缩放类型，可以有none(默认)--无缩放，real--按指定实际尺寸或比例缩放(需要同时指定width/height/xscale/yscale参数值)
- `piecechar` 棋子字符
- `piecefont` 棋子字符字体
- `piecetype` 棋子类型，可以有o--简约型，oo--带双线边框无阴影型，ooo--立体型
- `boxlinewd` 棋子边框线线宽
- `boxcolor` 棋子边框颜色
- `redpiece` 红棋文字颜色
- `blkpiece` 黑棋文字颜色
- `lower` 棋子背景颜色
- `donut` 棋子环带颜色
- `redupper` 红棋棋子颜色
- `blkupper` 黑棋棋子颜色
- `shadow` 棋子阴影颜色
- `charstroke` 棋子文字笔划类型，可以有none，solid--实线轮廓，whide--白色填充，bold--加粗选择(默认)，invisible-—隐藏笔划。

注意：`\init`、`\set`、`\del`和`\mov`这四个命令只能用于`setcchessman`环境及其星号环境中。

##  参与贡献
---------------------

1. github仓库:
    (1). 仓库地址: [chinesechess](https://github.com/registor/chinesechess)
    (2). Issues和PR: [issue](https://github.com/registor/chinesechess/issues) or [pull request](https://github.com/registor/chinesechess/pulls).

2. gitee仓库:
    (1). 仓库地址: [chinesechess](https://gitee.com/nwafu_nan/chinesechess)
    (2). Issues and PR: [issue](https://gitee.com/nwafu_nan/chinesechess/issues) or [pull request](https://gitee.com/nwafu_nan/chinesechess/pulls).

Copyright and Licence
---------------------

    Copyright (C) 2020-2022 by Nan Geng <nangeng@nwafu.edu.cn>
    ----------------------------------------------------------------------
    
    This work may be distributed and/or modified under the
    conditions of the LaTeX Project Public License, either
    version 1.3c of this license or (at your option) any later
    version. This version of this license is in
       http://www.latex-project.org/lppl/lppl-1-3c.txt
    and the latest version of this license is in
       http://www.latex-project.org/lppl.txt
    and version 1.3 or later is part of all distributions of
    LaTeX version 2005/12/01 or later.
    
    This work has the LPPL maintenance status "maintained".
    
    The Current Maintainer of this work is Nan Geng.
    
    This package consists of chinesechess.sty, chinesechess.tex and README.md(this file),
                 and the derived files chinesechess.pdf.

