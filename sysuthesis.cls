% !Mode:: "TeX:UTF-8"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This is a template for SYSU student.
%%
%%========================================
%%
%% Author: ekli & xueting zhang
%% e-mail: 
%% version 0.1
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sysuthesis}[2021/03/27 v0.1 The LaTeX template for thesis of SYSU]
\typeout{Document Class `sysuthesis' v0.1 by ekli (2021/03/27)}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  For different degree demand  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifbachelordegree\bachelordegreefalse % for bachelor
\newif\ifmasterdegree\masterdegreefalse % for master
\newif\ifdoctordegree\doctordegreefalse % for phd
\newif\ifcleardb\cleardbfalse % for wherther clear double page
\newif\ifusectex\usectexfalse % for using CTEX program ...

\DeclareOption{bachelor}{\bachelordegreetrue\masterdegreefalse\doctordegreefalse}
\DeclareOption{master}{\bachelordegreefalse\masterdegreetrue\doctordegreefalse}
\DeclareOption{doctor}{\bachelordegreefalse\masterdegreefalse\doctordegreetrue}

\DeclareOption{cleardb}{\cleardbtrue}
\DeclareOption{usectex}{\usectextrue}

%%==========================================
%% 信息参数
\def\ctitle#1{\def\@ctitle{#1}}\def\@ctitle{}
\def\etitle#1{\def\@etitle{#1}}\def\@etitle{}
\def\csubject#1{\def\@csubject{#1}}\def\@csubject{}
\def\esubject#1{\def\@esubject{#1}}\def\@esubject{}
\def\cauthor#1{\def\@cauthor{#1}}\def\@cauthor{}
\def\eauthor#1{\def\@eauthor{#1}}\def\@eauthor{}
\def\csupervisor#1{\def\@csupervisor{#1}}\def\@csupervisor{}
\def\esupervisor#1{\def\@esupervisor{#1}}\def\@esupervisor{}
\def\cdate#1{\def\@cdate{#1}}\def\@cdate{}
%%\long\def\cabstract#1{\long\def\@cabstract{#1}}\long\def\@cabstract{}
%%\long\def\eabstract#1{\long\def\@eabstract{#1}}\long\def\@eabstract{}
\def\ckeywords#1{\def\@ckeywords{#1}}\def\@ckeywords{}
\def\ekeywords#1{\def\@ekeywords{#1}}\def\@ekeywords{}
\def\cheading#1{\def\@cheading{#1}}\def\@cheading{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

\ProcessOptions
\LoadClass[12pt,a4paper,twoside,fontset=windowsnew]{ctexbook}

\newcommand{\stcleardb}{%
    \ifcleardb
        \cleardoublepage
    \else
        \clearpage
        \let\cleardoublepage=\clearpage
    \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{calc}
\RequirePackage{setspace}                       %设置间距
%% 页面尺寸
\ifusectex
\RequirePackage[%
	%paperheight=297mm,
	%paperwidth=210mm,
    %body={150mm, 240mm plus 2mm minus 2mm},
    %textwidth=150mm,
    %textheight=240mm,
    top=30mm,
    bottom=27mm,
    left=30mm,% plus 1mm minus 1em, 
    right=30mm,% plus 1mm minus 1em,
    head=6mm,
    foot=10mm,% plus 3mm minus 3mm,
    headsep=2mm,% plus 3mm minus 5mm,
    footskip=10mm ,%plus 2mm minus 2mm,
    includehead,includefoot,
]{geometry}

    % 控制字间距，使每行 34 个汉字
    \renewcommand{\CJKglue}{\hskip 0.5 pt plus 0.1\baselineskip}
    \renewcommand{\baselinestretch}{1.6} %% 1.5倍行距
\else
\RequirePackage[%
	%paperheight=297mm,
	%paperwidth=210mm,
    %body={150mm, 240mm plus 2mm minus 2mm},
    %textwidth=150mm,
    %textheight=240mm,
    top=30mm,
    bottom=27mm,
    left=30mm,% plus 1mm minus 1em, 
    right=30mm,% plus 1mm minus 1em,
    head=4mm,
    foot=10mm,% plus 3mm minus 3mm,
    headsep=-2mm,% plus 3mm minus 5mm,
    footskip=10mm ,%plus 2mm minus 2mm,
    includehead,includefoot,
]{geometry}
    \ziju{0.09pt}
    \renewcommand{\baselinestretch}{1.6} %% 1.5倍行距
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fonts Definition and Basics 
\newcommand{\chuhao}{\fontsize{42bp}{42bp}\selectfont}       % 初号, 单倍行距
\newcommand{\xiaochu}{\fontsize{42bp}{42bp}\selectfont}       % 小初号, 单倍行距
\newcommand{\yihao}{\fontsize{26bp}{26bp}\selectfont}       % 一号, 单倍行距
\newcommand{\xiaoyi}{\fontsize{24bp}{24bp}\selectfont}      % 小一, 单倍行距
\newcommand{\erhao}{\fontsize{22bp}{1.25\baselineskip}\selectfont}       % 二号, 1.25倍行距
\newcommand{\xiaoer}{\fontsize{18bp}{18bp}\selectfont}      % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16bp}{16bp}\selectfont}      % 三号, 单倍行距
\newcommand{\xiaosan}{\fontsize{15bp}{15bp}\selectfont}     % 小三, 单倍行距
\newcommand{\sihao}{\fontsize{14bp}{14bp}\selectfont}       % 四号, 单倍行距
\newcommand{\xiaosi}{\fontsize{12bp}{12bp}\selectfont}      % 小四, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5bp}{10.5bp}\selectfont}   % 五号, 单倍行距
\newcommand{\xiaowu}{\fontsize{9bp}{9bp}\selectfont}        % 小五, 单倍行距


\newcommand{\linespacing}[1]{\linespread{#1}\selectfont}  % 行距命令

%\renewcommand{\baselinestretch}{1.6} %% 1.5倍行距
%\setlength\parskip{0.5\baselineskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some general packages
\RequirePackage{fancyhdr}
%% 定义标准页眉页脚
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \renewcommand{\headrule}{
      {%\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
      \rule[6pt]{\textwidth}{0.65pt} \\ [-22pt]%
      \textcolor{lightdark}{%
        \rule{\textwidth}{0.7mm}
      } %
      }
    }
  \pagestyle{fancy}
  \fancyfoot[C]{\xiaowu ~\thepage~}
}

\fancypagestyle{coverplain}{%
    \renewcommand{\headrulewidth}{0.6pt}
    \pagestyle{fancy}
    \fancyfoot{}
    \fancyhead{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\listfigurename}{图目录}
\renewcommand{\listtablename}{表目录}

%% 数学支持
\RequirePackage{amsmath, amssymb}
%% 图片展示
\RequirePackage{graphicx}
%支持代码环境
\RequirePackage{listings}
\lstset{numbers=left,%
    language=[ANSI]{C},
    numberstyle=\tiny,
    extendedchars=false,
    showstringspaces=false,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keywordstyle=\color{blue!70},
    commentstyle=\color{red!50!green!50!blue!50},
    frame=shadowbox,
    rulesepcolor=\color{red!20!green!20!blue!20}
}

%% 链接
\RequirePackage[%
            bookmarksnumbered=true,
            bookmarksopen=true,
            colorlinks=false,
            pdfborder={0 0 1},
            citecolor=blue,
            linkcolor=red,
            anchorcolor=green,
            urlcolor=blue,
            breaklinks=true
            ]{hyperref}

\RequirePackage{color} %%
\definecolor{lightdark}{RGB}{0,0,0}

%支持算法环境（伪代码）
\RequirePackage[boxed,ruled,lined]{algorithm2e}

\RequirePackage{url}
\RequirePackage[sort&compress,numbers]{natbib}  % 支持引用缩写的宏包

\renewcommand{\bibname}{参考文献}
\renewenvironment{thebibliography}[1]{
    %\titleformat{\chapter}{\raggedright\sihao\hei}{\chaptername}{2em}{}
    %\titleformat{\chapter}{\centering\sihao\hei}{\chaptername}{2em}{}
    %\titleformat{\chapter}{\centering\xiaoer\hei}{\chaptername}{2em}{}
   \chapter*{\bibname}
   \markboth{\bibname}{\bibname}
   \addcontentsline{toc}{chapter}{\bibname}
   \xiaosi
   \list{\@biblabel{\@arabic\c@enumiv}}
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{0 cm}
         \setlength{\labelsep}{0pt}
         \setlength{\itemindent}{0em}
         \setlength{\leftmargin}{2em}%\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.5em}
%         \addtolength{\itemsep}{-1.0em}
         \linespread{1.25}\selectfont	% 调整每个参考文献项内的间距 ！！！
         \usecounter{enumiv}
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}
    \sloppy\frenchspacing
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000
    \interlinepenalty4000
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}
    \endlist\frenchspacing}

% 缩小参考文献间的垂直间距
%\addtolength{\bibsep}{-0.7em}

% 每个条目自第二行起缩进的距离
%\setlength{\bibhang}{4em}

% 参考文献引用作为上标出现
\let\oldcite\cite
\renewcommand{\cite}[1]{\textsuperscript{\oldcite{#1}}}

% 引用格式
%\bibpunct{[}{]}{,}{s}{}{,}

%%%%%%%%%% Theorem Environment 定理 %%%%%%%%%%%%%%%%%
\newtheorem{theorem}{定理~}[chapter]
\newtheorem{lemma}{引理~}[chapter]
\newtheorem{axiom}{公理~}[chapter]
\newtheorem{proposition}{命题~}[chapter]
\newtheorem{prop}{性质~}[chapter]
\newtheorem{corollary}{推论~}[chapter]
\newtheorem{conclusion}{结论~}[chapter]
\newtheorem{definition}{定义~}[chapter]
\newtheorem{conjecture}{猜想~}[chapter]
\newtheorem{example}{例~}[chapter]
\newtheorem{remark}{注~}[chapter]
%\newtheorem{algorithm}{算法~}[chapter]
\newenvironment{proof}{\noindent{\heiti 证明：}}{\hfill $ \square $ \vskip 4mm}

% 调整罗列环境的布局
%\setitemize{leftmargin=3em,itemsep=0em,partopsep=0em,parsep=0em,topsep=-0em}
%\setenumerate{leftmargin=3em,itemsep=0em,partopsep=0em,parsep=0em,topsep=0em}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}                       % 控制标题的宏包
\RequirePackage{titletoc}                       % 控制目录的宏包

\setcounter{secnumdepth}{5}  % 章节层次
% 章节设置
%\newcommand{\CTEXset}[1]{%
%    \ifusectex
%        \CTEXsetup{#1}
%    \else
%        \ctexset{#1}
%    \fi
%}
%\ctexset{%
%\CTEXsetup{%
\ifusectex
\CTEXsetup[number={\arabic{chapter}}]{chapter}
%\titleformat{\chapter}{\centering\xiaoer\heiti}{第\chinese{chapter}章}{2em}{}
\titleformat{\chapter}{\centering\xiaoer\heiti}{第\arabic{chapter}章}{2em}{}
\titlespacing{\chapter}{0pt}{-0.5\baselineskip}{0.8\baselineskip}

% section标题格式：小三，宋体加粗，左对齐
\titleformat{\section}{\xiaosan\songti\bfseries}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}

% subsection标题格式：四号，宋体加粗，左对齐
\titleformat{\subsection}{\sihao\songti\bfseries}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}

% subsubsection标题格式：小四，宋体加粗，左对齐
\titleformat{\subsubsection}{\xiaosi\songti\bfseries}{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0pt}{0\baselineskip}{0\baselineskip}

%% \pkg{fancyhdr} 定义页眉页脚很方便，但是有一个非常隐蔽的坑。通过 \pkg{fancyhdr} 
%% 定义的样式在第一次被调用时会修改 \cs{chaptermark}，这会导致页眉信息错误（多余
%% 章号并且英文大写）
\AtBeginDocument{%
    \pagestyle{empty}
    \renewcommand{\chaptermark}[1]{%
        \markboth{\CTEXthechapter\hskip\ccwd #1}{}}
}

\else
\ctexset{%
    chapter = {%
        pagestyle = fancy,
        beforeskip = 0.05\baselineskip,
        afterskip = 0.8\baselineskip,
        name={第,章},%
        %number={\chinese{chapter}},
        number={\arabic{chapter}},
        format={\centering\heiti\xiaoer\bf },
    },
    section = {%
        number={\arabic{chapter}.\arabic{section}},
        format={\flushleft\heiti\xiaosan\bf },
    },
    subsection = {%
        number={\thesection.\arabic{subsection}},
        format={\flushleft\heiti\sihao\bf },
    },
    subsubsection = {%
        number={\thesubsection.\arabic{subsubsection}},
        format={\flushleft\heiti\xiaosi\bf },
    }
}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 目录设置
%%--------------------------
\titlecontents{chapter}%
        [0em]%
        {\xiaosi\heiti}%
        %{\thecontentslabel\quad}%
        {\thecontentslabel\quad}
        {}%
        {\;\titlerule*[0.5pc]{.}\;\thecontentspage\hspace*{-1.2em}}%
\titlecontents{section}%
        [2em]%
        {\xiaosi\songti}%
        {\thecontentslabel\quad}%
        {}%
        {\;\titlerule*[0.5pc]{.}\;\thecontentspage\hspace*{-1.2em}}%
\titlecontents{subsection}%
        [4em]%
        {\xiaosi\songti}%
        {\thecontentslabel\quad}%
        {}%
        {\;\titlerule*[0.5pc]{.}\;\thecontentspage\hspace*{-1.2em}}%

%% 目录重定义
\renewcommand{\tableofcontents}{%
    \cleardoublepage%    
    %%------------------------------
    \renewcommand{\contentsname}{目\quad 录}
    \chapter*{\contentsname}%
    \ifdoctordegree
        \addcontentsline{toc}{chapter}{\contentsname}
        \markboth{\contentsname}{\contentsname}%
    \fi
    %\vspace{-22pt}
    {\linespacing{1.5}%
        \@starttoc{toc}
    }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 封面定义
\def\makecover{
    \clearpage
    \pagestyle{empty}
    \coverpage %% 封皮
    \stcleardb
    \statement %% 原创声明
    \stcleardb
    \authorization %% 授权声明
    \stcleardb
    \clearpage
    \ifmasterdegree
        \pagestyle{plain}
    \else\ifdoctordegree
        \pagestyle{plain}
        \else
        \pagestyle{plain}
        \fi
    \fi
}

%\iffalse
%% 定义正文前页面
\renewcommand{\frontmatter}{%
    \pagenumbering{Roman}
    \fancyhead{}
    \ifdoctordegree
        \fancyhead[CO]{\songti\xiaowu \leftmark} % 奇数页眉
        \fancyhead[CE]{\songti\xiaowu \@cheading} % 偶数页眉
    \fi
}

%% 定义正文页面
\renewcommand{\mainmatter}{%
    \stcleardb
    \pagenumbering{arabic}
    \fancyhead{}
    %%\chead{\songti\wuhao \leftmark}
    \fancyhead[CO]{\songti\xiaowu \leftmark} % 奇数页眉
    \fancyhead[CE]{\songti\xiaowu \@cheading} % 偶数页眉
    \xiaosi\songti
}

%% 定义附录页面
\renewcommand{\backmatter}{%
    \stcleardb
    \fancyhead{}
    \fancyhead[C]{\songti\xiaowu \leftmark} % 奇数页眉
    \xiaosi\songti
}

%\fi




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 封皮定义
\newlength{\@title@width} %% 定义一个长度

\newcommand{\coverpage}{%
    \begin{titlepage}
        \vspace*{31.5pt}
        \begin{center}
            \vspace*{21pt}
            %\hei\chuhao{\textbf{中山大学理学硕士学位论文}}
            %\vspace*{60pt}
            \songti\sanhao{\@ctitle}\par
            \vspace{1em}
            \xiaosi{\textrm{\@etitle}}
            \vspace*{50pt}
            \vfill            
            \setlength{\@title@width}{5cm}	% 控制封面中下划线的长度。
            {\xiaosan\songti{
            \extrarowheight=15pt
            \begin{tabular}{p{0.28\textwidth}cc}
                 学\hfill 位\hfill 申\hfill 请\hfill 人 & ：  & 
                 {\makebox[\@title@width][c]{\@cauthor}} \\
                 专\hfill 业\hfill 名\hfill 称 & ： & 
                 {\makebox[\@title@width][c]{\@csubject}}\\
                 导\hfill 师\hfill 姓\hfill 名\hfill 及\hfill 职\hfill 称 & ：  &  
                 {\makebox[\@title@width][c]{\@csupervisor}} \\
             \end{tabular}}
             }
             
             \vspace*{42pt}
             \vfill
             
             \setlength{\@title@width}{5cm}
             {\xiaosan\songti{
             \extrarowheight=12pt
             \begin{tabular}{lc}
                  \bfseries{答辩委员会主席（签名）：}  & 
                  {\makebox[\@title@width][c]{~}} \\
                  \bfseries{委员（签名）：}  &  
                  {\makebox[\@title@width][c]{~}} \\
                  ~ &  {\makebox[\@title@width][c]{~}}\\
                  ~ &  {\makebox[\@title@width][c]{~}}\\
                  ~ &  {\makebox[\@title@width][c]{~}}\\
                  ~ &  {\makebox[\@title@width][c]{~}}\\
             \end{tabular}}	% 不加粗
             }
             %\vspace*{60pt}
             % \vspace*{21pt}
             \vfill
             %\songti\sanhao{\textbf{\@cdate}}
        \end{center}
    \end{titlepage}
    \clearpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 中文摘要
\newenvironment{cabstract}{%
    \stcleardb
    %~\par
    \ifmasterdegree
        \ifusectex
            ~\vspace{-0.8\baselineskip}
        \else
            ~\vspace{-0.2\baselineskip}
        \fi

        \begin{center}
            {\songti\xiaoer \@ctitle } \par
            ~\par
            \setlength{\@title@width}{5cm}
             {\xiaosan\songti{
             \renewcommand{\arraystretch}{1.25}
             \begin{tabular}{p{0.8\textwidth}<{\centering}}
             	专业：\@csubject \\
             	硕士生： \@cauthor \\
             	指导教师：\@csupervisor \\
              \end{tabular}}
              }              
        \end{center}
        \vspace{\baselineskip} %% 空一行
        % 中文摘要：小二，黑体加粗，居中
        
        \begin{center}
            \xiaoer\heiti 摘\quad 要
        \end{center}
        \vspace{0.5\baselineskip} % 新增摘要后空行
        
    \else\ifdoctordegree
        \chapter*{摘\quad 要}
        \addcontentsline{toc}{chapter}{摘\quad 要}
        \markboth{摘\quad 要}{摘\quad 要}%
        \else
        \chapter*{摘\quad 要}
        \fi
    \fi   
    
    % 插入中文摘要
    \songti\xiaosi
    \begin{spacing}{1.5} 

    }{
    \vspace{\baselineskip}
    \hangafter=1\hangindent=52.3pt\noindent
    {\heiti\xiaosi 关键词： \@ckeywords}
    \end{spacing}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 英文摘要
\newenvironment{eabstract}{%
    \stcleardb
    \ifmasterdegree
        \begin{center}
            \setlength{\@title@width}{5cm}
            {\xiaosan
        \renewcommand{\arraystretch}{1.25}
        \begin{tabular}{p{0.8\textwidth}<{\centering}}
            \@etitle \\
            Major: \@esubject \\
            Name:  \@eauthor \\
            Supervisor: \@esupervisor \\
	    \end{tabular}
	    }
	    \end{center}
	    \vspace{\baselineskip}
	    	    
	    \begin{center}
	        \xiaoer{\bf{Abstract}}
	    \end{center}
	    \vspace{0.5\baselineskip}
	\else\ifdoctordegree
        \chapter*{Abstract}
        \addcontentsline{toc}{chapter}{Abstract}
        \markboth{Abstract}{Abstract}%
        \else
        \chapter*{Abstract}
        \fi
	\fi	    
	    % 插入英文摘要
	    \xiaosi
        \begin{spacing}{1.5}
	    
    }{
        \hangafter=1\hangindent=60pt\noindent
        \textbf{Keywords: \@ekeywords }

        \end{spacing}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 论文原创性声明
\newcommand{\statement}{%
    %%%%%%%%%%%%%   Originality Statement  %%%%%%%%%%%
    \clearpage
    %\pdfbookmark[0]{论文原创性声明}{originality}
    \thispagestyle{coverplain}
    ~
    \vspace{5em}
    \begin{center}
        \heiti\sanhao 论文原创性声明
    \end{center}
    \vspace{2em}
    
    {\songti\sihao\linespacing{2.4}    
    本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究作出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。

    } 
    
    \vspace*{18pt}
    \begin{flushright}
    \setlength{\@title@width}{3cm}
    {\sihao\songti{
    \extrarowheight=24pt
      \begin{tabular}{r}
          学位论文作者签名: {\makebox[\@title@width][c]{~}} \\
          日期:   \hspace{2em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日\\
      \end{tabular}}
      }
    \end{flushright}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 论文使用授权
\newcommand{\authorization}{%
    %%%%%%%%%   Authorization Statement  %%%%%%%%%%%%
    %\vspace*{60pt}
    \clearpage
    %\pdfbookmark[0]{学位论文使用授权声明}{authorization}
    \thispagestyle{empty}
    ~
    \vspace{4.8em}
    \begin{center}
        \sanhao\heiti{学位论文使用授权声明}
    \end{center}
    \vspace{2.3em}
    
    {\linespacing{1.7}
    \songti\sihao
    本人完全了解中山大学有关保留、使用学位论文的规定，即：学校有权保留学位论文并向国家主管部门或其指定机构送交论文的电子版和纸质版；有权将学位论文用于非赢利目的的少量复制并允许论文进入学校图书馆、院系资料室被查阅；有权将学位论文的内容编入有关数据库进行检索；可以采用复印、缩印或其他方法保存学位论文；可以为建立了馆际合作关系的兄弟高校用户提供文献传递服务和交换服务。

    保密论文保密期满后，适用本声明。
    
    }

    \vspace*{30pt}
    %\begin{flushright}
    \setlength{\@title@width}{5cm}
    {\sihao\songti
    \extrarowheight=12pt
    \noindent
    \begin{tabular}{p{0.48\textwidth}p{0.48\textwidth}}
    学位论文作者签名: \qquad\qquad\qquad  &  导师签名: \qquad\qquad\qquad\\
    日期: \qquad 年\qquad 月\qquad 日     &  日期: \qquad 年\qquad 月\qquad 日 \\
    \end{tabular}
    }
}

\endinput
%% End of file 'sysuthesis.cls'
