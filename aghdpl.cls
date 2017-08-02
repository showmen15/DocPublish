%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%
% Author:  Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          Paweł Suder        (pawel@suder.info)
%          AGH University of Science and Technology, Kraków, POLAND
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{aghdpl}

\DeclareOption{pdflatex}{\pdflatextrue}

\ProcessOptions\LoadClass[a4paper,oneside,openright,final,11pt]{book}

\RequirePackage{calc} % Sim­ple arith­metic in LATEX com­mands

\RequirePackage{geometry} % Flex­i­ble and com­plete in­ter­face to doc­u­ment di­men­sions
\RequirePackage{floatrow} % Mod­i­fy­ing the lay­out of floats
\RequirePackage{float} % Im­proved in­ter­face for float­ing ob­jects

\RequirePackage{tocloft} % Con­trol ta­ble of con­tents, fig­ures, etc
\RequirePackage{titlesec} % Select al­ter­na­tive sec­tion ti­tles

\RequirePackage{fancyhdr} % Ex­ten­sive con­trol of page head­ers and foot­ers in LATEX2


\RequirePackage{amssymb}

\RequirePackage[polish]{babel} % Mul­tilin­gual sup­port for Plain TEX or LATEX
\RequirePackage[utf8]{inputenc} % Ac­cept dif­fer­ent in­put en­cod­ings
\RequirePackage{polski} % Type­set Pol­ish doc­u­ments with LATEX and Pol­ish fonts


\RequirePackage{textcomp} % LATEX sup­port for the Text Com­pan­ion fonts

\RequirePackage[hyperindex,breaklinks,colorlinks=false,urlcolor=green!50!black]{hyperref} % Ex­ten­sive sup­port for hy­per­text in LATEX
%\RequirePackage[hidelinks]{hyperref}
\RequirePackage{breakurl} % Line-break­able \url-like links in hy­per­ref when com­pil­ing via dvips/ps2pdf

\RequirePackage{xcolor} % Driver-in­de­pen­dent color ex­ten­sions for LATEX and pdfLATEX
\RequirePackage{graphicx} % En­hanced sup­port for graph­ics
\RequirePackage{wrapfig} % Produces figures which text can flow around

\RequirePackage{enumerate} % Enu­mer­ate with re­de­fin­able la­bels
\RequirePackage{listings} % Type­set source code list­ings us­ing LATEX

%\RequirePackage[backend=bibtex,style=alphabetic]{biblatex} % Bi­b­li­ogra­phies in LATEX us­ing BibTEX for sort­ing only
\RequirePackage{cite}  %Bibiografia 

\RequirePackage{indentfirst} %wcięciecie pierwszego akapitu


\RequirePackage{titletoc} %Formatowanie spisu treści 


\RequirePackage{truncate}


\urlstyle{rm}

\geometry{inner=27mm, outer=18mm, tmargin=25mm, bmargin=25mm, foot=10mm, head=10mm}

\def\title#1              {\gdef\@title{#1}}
\def\shorttitle#1         {\gdef\@shorttitle{#1}}
\def\thesistype#1         {\gdef\@thesistype{#1}}
\def\supervisor#1         {\gdef\@supervisor{#1}}
\def\supervisorauxiliary#1         {\gdef\@supervisorauxiliary{#1}}
\def\faculty#1            {\gdef\@faculty{#1}}
\def\department#1         {\gdef\@department{#1}}
\def\degreeprogramme#1    {\gdef\@degreeprogramme{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}



\linespread{1.5}

% Formatowanie odstępu pomiędzy liniami w sekcji 
\titleformat*{\section}{\fontsize{12}{10}\bfseries}

%------------------------------------------------------------------------------

\def\thesisheaders{
  \fancyfoot[LE,RO]{\textit \@shorttitle}
}

\newcommand{\titlepages}{

  \newpage
    \thispagestyle{empty}

    \begin{center}
      \vspace*{0.5cm}

	   {\huge \bfseries \scshape Akademia Górniczo-Hutnicza}
       \vspace*{1mm}
	  
	   {\large \bfseries \scshape im. Stanisława Staszica w Krakowie}
	  \vspace*{10mm}
	  
      \includegraphics[scale=0.5]{img/agh}
      \vspace*{2mm}

      {\normalsize \bfseries \@faculty}
      \vspace*{3mm}

      {\normalsize \bfseries  \@department}
      \vspace*{12mm}

      {\huge \bfseries \@title}
      \vspace*{10mm}
	  
	  {\Large \bfseries \@author}
      \vspace*{10mm}
	  
	  {\Large Rozprawa doktorska przygotowana pod kierunkiem \\ \@supervisor \\ oraz \\ \@supervisorauxiliary \\ (promotor pomocniczy)}
	  
    \end{center}

    \noindent
	\vfill
    \centerline{\small \sffamily Kraków, \@date}
	\clearpage
}

\newcommand{\statementAuthenticity}{ 
\newpage
    \thispagestyle{empty}
	
    {\itshape Oświadczam, świadomy(-a) odpowiedzialności karnej za poświadczenie nieprawdy, że niniejszą pracę dyplomową wykonałem(-am) osobiście i samodzielnie i nie korzystałem(-am) ze źródeł innych niż wymienione w pracy.}
}

\newcommand{\financing}{
	\newpage
    \thispagestyle{empty}
    
	 \vspace*{3cm}
	\begin{figure*}[ht] 	
			\begin{center}
				\begin{minipage}[b]{0.3\linewidth}
					\includegraphics[width=\linewidth, height=2cm]{img/kapitalLudzki}
				\end{minipage}
				\begin{minipage}[b]{0.3\linewidth}
					\includegraphics[width=\linewidth, height=2cm]{img/Malopolska}
				\end{minipage}
				\begin{minipage}[b]{0.3\linewidth}
					\includegraphics[width=\linewidth, height=2cm]{img/UniaEuropejska}
				\end{minipage}
			\end{center}
		\end{figure*}
	
	\vspace*{5cm} 
	\begin{center}
		{\Large Autor niniejszej pracy był Stypendystą w ramach projektu \\ „Doctus – Małopolski fundusz stypendialny dla doktorantów” \\współfinansowanego przez Unię Europejską ze środków \\Europejskiego Funduszu Społecznego w latach 2012 – 2015}
	\end{center}
	\clearpage
}


\newcommand{\Thanks}[1]{
	\newpage
	\newgeometry{left=#1, bottom=2.5cm}
    \thispagestyle{empty}
	%\vspace*{#1}
	\vspace*{\fill}
	\begin{flushleft}
	{\normalsize \@acknowledgements}
	\end{flushleft}
	\restoregeometry
	\clearpage
}

\pagestyle{fancy}

\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}

\fancyhf{}
\fancyhead{}
\fancyhead[RE,LO]{\truncate{15cm}{\slshape{\small \rightmark}}}
\fancyhead[RO,LE]{\bfseries \thepage}



%% spis treści
\usepackage{tocloft}
\renewcommand\cftchapfont{\normalfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand\cftchappagefont{\normalfont}
\renewcommand{\cftdotsep}{0.2}
\renewcommand\cftchapdotsep{\cftdot}
\setlength{\cftbeforechapskip}{0pt}
\renewcommand{\chaptername}{}

\dottedcontents{chapter}[0em]{\bfseries}{1.5em}{0pc} % \dottedcontents{<section>}[<left>]{<above-code>} {<label width>}{<leader width>}\textbf{}
 

\definecolor{pblue}{rgb}{0.13,0.13,1}
\definecolor{pgreen}{rgb}{0,0.5,0}
\definecolor{pred}{rgb}{0.9,0,0}
\definecolor{pgrey}{rgb}{0.46,0.45,0.48}

\lstset{language=Java,
	showspaces=false,
	showtabs=false,
	breaklines=true,
	showstringspaces=false,
	breakatwhitespace=true,
	commentstyle=\color{pgreen},
	keywordstyle=\color{pblue},
	stringstyle=\color{pred},
	basicstyle=\ttfamily,
	moredelim=[il][\textcolor{pgrey}]{$$},
	moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%}
}

%% Nowa strona
\newcommand*\NewPage{\newpage\null\thispagestyle{empty}\newpage}

