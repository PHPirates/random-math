\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thomasclass-deprecated}[]

%CHANGELOG
%2017/1/29
% added determinant
%2016/10/3
% added \ep and \bep, epsilon and bold epsilon
%2016/9/10
%added \fl for floats
%2016/06/18
% Added better function restriction, \restr{f}{[a,b]}
%2016/06/12
% Added hyperlink setup
%2016/06/08
% Added \Vol for volume operator
%2016/06/07
% Added integral-d, \d
%2016/06/04
% Added \R for Riemann multivariable, \: for \colon, changed \sl into \textsl 
%2016/06/02
%Added qtree package 	
%2016/05/30
%Added vvec/map/toprove environment/underline shortcut/better epsilon/phi
%2016/05/29
%Added infinity norm
%2016/05/28
%Created class file

\LoadClass[a4paper]{exam}

\RequirePackage[dutch]{babel} % maths goes in duth, so far
\RequirePackage[fleqn]{amsmath} % left align equations option
\RequirePackage{amsthm} % proof environments
\RequirePackage{amssymb} % some symbols like probability P, or real number R
\RequirePackage{mathtools} % improvement over amsmath, like \coloneqq 
\RequirePackage{enumerate} % numbered list
\RequirePackage{thmtools} % define custom to prove environments
\RequirePackage{xcolor} % colors
\RequirePackage{pdfpages} % to include external pdfs
\RequirePackage{centernot} % \centernot \implies looks correct
\RequirePackage{tikz} % Used for drawings
\RequirePackage{imakeidx} % Used for index
\RequirePackage[makeroom]{cancel} % to draw a diagonal line through formulas
\RequirePackage{hyperref} % should make index clickable
\RequirePackage{bookmark} % Used for pdf bookmarks, needs to be loaded AFTER hyperref
\RequirePackage{pgfplots} % Drawings!
\usepgfplotslibrary{fillbetween}
\RequirePackage{bm} % bold math, \bm{}

% Hyperlink setup
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=cyan,
}

%--------------------Make usable space all of page
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}
\setlength{\topmargin}{0in}
\setlength{\headsep}{-.25in}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8.5in}

%--------------------Indention
\newlength\tindent
\setlength{\tindent}{\parindent}
\setlength{\parindent}{0pt}
\renewcommand{\indent}{\hspace*{\tindent}}

% To remove the section numbering
\renewcommand\@seccntformat[1]{} 

\theoremstyle{definition}
\newtheorem*{voorbeeld}{Voorbeeld}
\newtheorem*{definitie}{Definitie}
\newtheorem*{stelling}{Stelling}
\newtheorem*{lemma}{Lemma}
\newtheorem*{opm}{Opmerking}
\newtheorem*{gevolg}{Gevolg}
\newtheorem*{notatie}{Notatie}
\newtheorem*{valkuil}{\textcolor{red}{Valkuil}}

\newtheorem*{toprove}{Te bewijzen}
%% Credits to Sten
% Inline to prove env. To be used when `toprove' is the first content in a question. Then normally the text would end up on a new line, which is ugly. In these cases, use this environment instead.
\newenvironment{inlinetoprove}
{\enskip\textbf{Te bewijzen.\space}}% \begin{inlinetoprove}
{\enskip}% \end{inlinetoprove}

% Function restrictions
\newcommand\restr[2]{{
		\left.\kern-\nulldelimiterspace % automatically resize the bar with \right
		#1 % the function
		\vphantom{\big|} % pretend it's a little taller at normal size
		\right|_{#2} % this is the delimiter
	}}
	
%float function
\DeclareMathOperator{\fl}{\mathop{fl}}

% Volume
\DeclareMathOperator{\Vol}{Vol}

% d used for integrals
\renewcommand*\d{\mathop{}\!\mathrm{d}}

% Set interior and distance
\DeclareMathOperator{\intr}{\mathop{int}} 
\DeclareMathOperator{\dist}{\mathop{dist}}

% Infinity norm
\newcommand{\inftynorm}[1]{\left\|#1\right\|_\infty}

% Vertical vector
\newcommand{\vvec}[1]{\begin{pmatrix} #1 \end{pmatrix}}

% Determinant
\renewcommand{\det}[1]{\left| \begin{matrix} #1 \end{matrix} \right|}

% Linear maps
\newcommand{\map}[1]{\mathcal{#1}}

% Vector underline shortcut
\newcommand{\ul}[1]{\underline{#1}}

% Better phi
\let\temp\phi
\let\phi\varphi
\let\varphi\temp

% Better epsilon
\let\temp\epsilon
\let\epsilon\varepsilon
\let\varepsilon\temp

% \ep for epsilon, \bep for bold epsilon
\newcommand{\ep}{\epsilon}
\newcommand{\bep}{\bm{\epsilon}}

% Number sets
\newcommand{\naturals}{\mathbb{N}}
\newcommand{\reals}{\mathbb{R}}
\newcommand{\complex}{\mathbb{C}}
\newcommand{\rationals}{\mathbb{Q}}

%Riemann multi-variable
\newcommand{\R}{\mathcal{R}}

% Big-O
\newcommand{\bigO}{\mathcal{O}}

%Short colon
\renewcommand{\:}{\colon}

%Macro's Maubach
\def\set#1{\lbrace#1\rbrace}
\def\abs#1{{\left|#1\right|}}
\def\vectorstat#1{{\textbf{#1}}} % vectors are defined as bold
\protected\def\a{\vectorstat{a}}
\protected\def\b{\vectorstat{b}}
\protected\def\c{\vectorstat{c}}
%\protected\def\d{\vectorstat{d}} % replaced by integral d
\protected\def\e{\vectorstat{e}}
\protected\def\f{\vectorstat{f}}
\protected\def\g{\vectorstat{g}}
\protected\def\h{\vectorstat{h}}
%\protected\def\i{\vectorstat{i}}
\protected\def\j{\vectorstat{j}}
\protected\def\k{\vectorstat{k}}
\protected\def\l{\vectorstat{l}}
\protected\def\m{\vectorstat{m}}
\protected\def\n{\vectorstat{n}}
\protected\def\p{\vectorstat{p}}
\protected\def\q{\vectorstat{q}}
\protected\def\r{\vectorstat{r}}
\protected\def\s{\vectorstat{s}}
\protected\def\t{\vectorstat{t}}
\protected\def\u{\vectorstat{u}}
\protected\def\v{\vectorstat{v}}
\protected\def\w{\vectorstat{w}}
\protected\def\x{\vectorstat{x}}
\protected\def\y{\vectorstat{y}}
\protected\def\z{\vectorstat{z}}
\protected\def\A{\vectorstat{A}}
\protected\def\B{\vectorstat{B}}
\protected\def\C{\vectorstat{C}}
\protected\def\D{\vectorstat{D}}
\protected\def\E{\vectorstat{E}}
\protected\def\F{\vectorstat{F}}
\protected\def\G{\vectorstat{G}}
\protected\def\H{\vectorstat{H}}
\protected\def\I{\vectorstat{I}}
\protected\def\J{\vectorstat{J}}
\protected\def\K{\vectorstat{K}}
\protected\def\L{\vectorstat{L}}
\protected\def\M{\vectorstat{M}}
\protected\def\N{\vectorstat{N}}
\protected\def\P{\vectorstat{P}}
\protected\def\Q{\vectorstat{Q}}
%\protected\def\R{\vectorstat{R}} % replaced by Riemann
\protected\def\S{\vectorstat{S}}
\protected\def\T{\vectorstat{T}}
\protected\def\U{\vectorstat{U}}
\protected\def\V{\vectorstat{V}}
\protected\def\W{\vectorstat{W}}
\protected\def\X{\vectorstat{X}}
\protected\def\Y{\vectorstat{Y}}
\protected\def\Z{\vectorstat{Z}}
\protected\def\zero{\vectorstat{0}}
\protected\def\one{\vectorstat{1}}
\protected\def\two{\vectorstat{2}}
\def\up#1{^{(#1)}}
\protected\def\red#1{{\color{red}#1}}
\protected\def\ore#1{{\color{orange}#1}}
\protected\def\grn#1{{\color{green}#1}}
\protected\def\blu#1{{\color{blue}#1}}
\protected\def\brn#1{{\color{brown}#1}}
\protected\def\blk#1{{\color{black}#1}}
\protected\def\gry#1{{\color{gray}#1}}
\protected\def\mgn#1{{\color{magenta}#1}}
\protected\def\prp#1{{\color{purple}#1}}
\newcommand{\indx}[1]{\index{#1}\textsl{#1}} % Do not use \sl 
\def\exclamation{!}% use \exclamation instead of '!' inside \indx ('!' is active in \index)
\makeindex

\endinput