%
% open-thesis-lyx v0.3
% By David H. Lorenz <lorenz@openu.ac.il>
% Version 0.4 released 16/7/2012
%
% Based on ociamthesis-lyx v2.1
% By Keith A. Gillow <gillow@maths.ox.ac.uk>
% Version 1.0 released 26/11/1997
%-------------------------- identification ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{openu-thesis}[2011/10/22 v0.3 OpenU thesis class]
%-------------------------- initial code -----------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{report}
\usepackage{setspace}
% As an alternative to the above could use next line for twosided output
%\LoadClass[a4paper,twoside,openright]{report}

\raggedbottom

\newcommand{\submittedtext}{{Prepared under the supervision of \textsc{Prof. David H. Lorenz}}}
%%\newcommand{\submittedtexy}{{תיזה המוגשת לסנט\\
%%למילוי חלקי של הדרישות לתואר}}
%A thesis submitted to the\\
%Faculy of the Graduate School of the Open University of Israel\\
%in partial fulfillment of the requirements for the degree of}}


%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the thesis is submitted 
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your Oxford college (e.g. Christ Church, Pembroke)
\def\college#1{\gdef\@college{#1}}


%
% Define text area of page and margin offsets
%
\setlength{\topmargin}{0.0in}
\setlength{\oddsidemargin}{0.33in}
\setlength{\evensidemargin}{-0.08in}
\setlength{\textheight}{9.0in}
\setlength{\textwidth}{6.0in}

%
% Environments
%

% This macro define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse
       \if@twocolumn\@restonecoltrue\onecolumn
       \else\if@openright\cleardoublepage\else\clearpage\fi
       \fi}%
       {\if@restonecol\twocolumn
       \else\newpage\thispagestyle{empty}\fi}

%define thesis title page layout
\renewcommand{\maketitle}{%
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
  %\null\vfill
  \begin{center}
    {\Huge {\bfseries {\@title}} \par}
    \vspace*{6ex}
    {\large
	%{Research Thesis \par}
	{חיבור על מחקר \par}
    \vspace*{2ex}
	%{In Partial Fulfillment of the Requirements for the Degree of \par}
	{לשם מילוי חלקי של הדרישות לקבלת התואר \par}
    \vspace*{1ex}
	%{\it Master of Science in Computer Science}
	{{\@degree} \par}
    }
    {\large \vspace*{20mm} \vfill {\centerline{\crest} \par} \vfill \vspace*{20mm}}
    {{\Large \@author} \par}
    \vspace*{25mm}
    {\large %\vspace*{1ex}
	%{The Research Thesis Was Done Under \par}
	%\vspace*{1ex}
	%{the Supervision of \textsc{Prof. David H. Lorenz} \par}
	{המחקר נעשה בהנחיית פרופ' דוד לורנץ \par}
	\vspace*{1ex}
	%{in the {\@college} \par}
	{{\@college} \par}
	\vspace*{1ex}
	%{The Open University of Israel \par}
	{האוניברסיטה הפתוחה \par}
	\vspace*{8ex}
    \vfill
	%{Submitted to the Senate of the Open University of Israel \par}
	{הוגש לסנט האו"פ}\par
	%{Elul 5772, Raananna, August 2012}
	{אלול תשע"ב, רעננה, אוגוסט 2102}
    }
  \end{center}
  %\null\vfill
\end{alwayssingle}
\doublespacing}



% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \thispagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{verse}\begin{center}}
{\end{center}\end{verse}\end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\begin{alwayssingle} \thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgement itself 
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\begin{alwayssingle} \thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}}
{\end{alwayssingle}}

% STATEMENT OF ORIGINALITY (AS SUGGESTED BY GSW)
%
% The originality environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself appears in a quote environment, i.e. tabbed in at 
% both sides, and on its own page.

\newenvironment{originality}
{\begin{alwayssingle} \thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Statement of Originality}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% The originalitylong environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself does not appears in a quote environment so you can 
% get more in.

\newenvironment{originalitylong}
{\begin{alwayssingle} \thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Statement of Originality}
\end{center}
\vspace{0.5cm}}
{\end{alwayssingle}}


%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

%\renewenvironment{abstract} {\begin{alwayssingle} \thispagestyle{empty}
%  \begin{center}
%  \vspace*{1.5cm}
%  {\Large \bfseries  Abstract}
%  \end{center}
%  \vspace{0.5cm}
%   \begin{quote}}
%{\end{quote}\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractlong} {\begin{alwayssingle} \thispagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\Large \bfseries  Abstract}
  \end{center}
  \vspace{0.5cm}}
{\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\begin{alwayssingle} \thispagestyle{empty}
  \vspace*{-1in}
 \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
{\large \vspace*{1ex}
    {{\@college} \par}
    {The Open University of Israel \par}
\vspace*{1ex}
    {{\it \submittedtext} \par}
    {{\it \submittedtexy} \par}    
    {\it {\@degree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

\newenvironment{listofpubs}
{\begin{alwayssingle} \thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
\chapter*{List of Publications}
\addcontentsline{toc}{chapter}{List of Publications}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
{\cleardoublepage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

% Document Setup
% You shouldn't have to touch anything in this box.
\baselineskip=18pt plus1pt
% set the number of sectioning levels that get number and appear in the contents
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{1}
% Display title page (generated from preamble)
%\maketitle
\def\crest{{\includegraphics{OpenU3.jpg}}}%logo
\college{במחלקה למתמטיקה ומדעי-המחשב}
\degree{\textit{מגיסטר למדעים} במדעי-המחשב}
