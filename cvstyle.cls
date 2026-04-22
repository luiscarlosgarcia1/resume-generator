%% Start of file `cvstyle.cls'.
% Resume document class — layout, typography, and CV structure commands.
%
% Based on Awesome-CV by Claud D. Park <posquit0.bj@gmail.com>
% License: LPPL v1.3c (http://www.latex-project.org/lppl)


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{cvstyle}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{xifthen}
\RequirePackage{xstring}
\RequirePackage{etoolbox}
\RequirePackage[quiet]{fontspec}
\RequirePackage{fontawesome6}
\RequirePackage{parskip}
\RequirePackage[hidelinks,unicode,pdfpagelabels=false]{hyperref}
\hypersetup{pdftitle={}, pdfauthor={}, pdfsubject={}, pdfkeywords={}}
\RequirePackage{bookmark}


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
% Default margins
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Text colors
\definecolor{darkertext}{HTML}{1C1C1C}
\definecolor{darktext}{HTML}{272727}
\definecolor{text}{HTML}{313131}
\definecolor{graytext}{HTML}{393939}
\definecolor{lighttext}{HTML}{585858}
\definecolor{sectiondivider}{HTML}{888888}

% Accent palette
\definecolor{awesome-black}{HTML}{1C1C1C}
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{true}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
\defaultfontfeatures{Ligatures=TeX, Renderer=HarfBuzz}

\setmainfont{SourceSans3}[
  Path=fonts/SourceSans3/, Extension=.ttf,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  FontFace={sb}{n}{Font=*-SemiBold},
  FontFace={sb}{it}{Font=*-SemiBoldItalic},
  FontFace={l}{n}{Font=*-Light},
  FontFace={l}{it}{Font=*-LightItalic},
]
\setsansfont{SourceSans3}[
  Path=fonts/SourceSans3/, Extension=.ttf,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  FontFace={sb}{n}{Font=*-SemiBold},
  FontFace={sb}{it}{Font=*-SemiBoldItalic},
  FontFace={l}{n}{Font=*-Light},
  FontFace={l}{it}{Font=*-LightItalic},
]
\newfontfamily\roboto{Roboto}[
  Path=fonts/Roboto/, Extension=.ttf,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  FontFace={l}{n}{Font=*-Light},
  FontFace={l}{it}{Font=*-LightItalic},
]

\newcommand*{\headerfont}{\roboto}
\newcommand*{\bodyfont}{\sffamily}
\newcommand*{\bodyfontlight}{\sffamily\fontseries{l}\selectfont}


%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Header
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{22pt}{1em}\headerfont\bfseries\color{darkertext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{22pt}{1em}\headerfont\bfseries\color{darkertext} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{9pt}{1em}\headerfont\itshape\color{text} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{8pt}{1em}\headerfont\color{darktext} #1}}

% Section structure
\newcommand*{\sectionstyleface}[1]{{\fontsize{15pt}{1em}\bodyfont\fontseries{sb}\selectfont #1}}
\newcommand*{\sectionstyle}[1]{%
  \color{darkertext}\sectionstyleface{#1}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}}

% Entry elements
\newcommand*{\entrytitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\fontseries{sb}\selectfont\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{text} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{lighttext} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% Certificate elements
\newcommand*{\certificatetitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\certificatepositionstyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\certificatedatestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\color{lighttext} #1}}
\newcommand*{\certificatelocationstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\color{lighttext} #1}}

% Skill elements
\newcommand*{\skilltypestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{text} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}


%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}

\newcommand*{\address}[1]{\def\@address{#1}}

\newcommand*{\mobile}[1]{%
  \def\@mobile{#1}
  \def\@teluri{tel:\@mobile}
  \StrDel{\@teluri}{ }[\@teluri]%
  \StrDel{\@teluri}{-}[\@teluri]%
  \StrDel{\@teluri}{(}[\@teluri]%
  \StrDel{\@teluri}{)}[\@teluri]%
}

\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}


%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.8mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}

\newcommand{\acvSectionTopSkip}{-1mm}
\newcommand{\acvSectionContentTopSkip}{1.5mm}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
\newcommand*{\makecvheader}[1][C]{%
  \begin{minipage}[c]{\textwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \href{\@teluri}{\faMobile\acvHeaderIconSep\@mobile}%
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@extrainfo}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \@extrainfo%
        }%
    } \\[\acvHeaderAfterSocialSkip]%
  \end{minipage}%
}

\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{sectiondivider}\vhrulefill{0.9pt}
}

\newenvironment{cvparagraph}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.25mm}
  \paragraphstyle
}{%
  \par
  \vspace{2mm}
}

\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
}

\newcommand*{\cventry}[5]{%
  \vspace{-2.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#2#3}
      {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
      {\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
      \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
    \ifstrempty{#5}
      {}
      {\multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} \\}
  \end{tabular*}%
}

\newenvironment{cvcertificates}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.25mm}
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{\textwidth - 4.0cm} R{2.5cm}}
}{%
    \end{tabular*}
  \end{center}
}

\newcommand*{\cvcertificate}[4]{%
  \certificatedatestyle{#4} & \certificatepositionstyle{#1}\ifempty{#2}{}{,} \certificatetitlestyle{#2} & \certificatelocationstyle{#3} \\
}

\newenvironment{cvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \setlength{\parskip}{0pt}
  \renewcommand{\arraystretch}{0.85}
  \tabularx{\textwidth}{@{}L{3.8cm}@{\hspace{0.5ex}}>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}X@{}}
}{%
  \endtabularx\par
}

\newcommand*{\cvskill}[2]{%
  \skilltypestyle{#1} & \leavevmode\skillsetstyle{#2} \\
}

\newenvironment{cvitems}{%
  \vspace{-3.078mm}
  \fontsize{10pt}{1em}\bodyfontlight\upshape\color{text}\selectfont
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, itemsep=0.75pt]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\textbullet}
}{%
  \end{itemize}
  \end{justify}
  \vspace{1.0mm}
}
