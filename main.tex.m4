\documentclass[a4paper,oneside,12pt]{book}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[polish]{babel}
\usepackage{lmodern}
\usepackage{lettrine}
\usepackage{textcomp}
\usepackage{hyperref}
\usepackage{fancyhdr}
\usepackage{pmboxdraw}
\usepackage{graphicx}
\usepackage{bbding}
\usepackage{aurical}
\usepackage{niceframe}


\pagestyle{fancy}

\input{macros.tex}
ifdef(`dumb', `\dumbtrue', `')

\begin{document}
\title{Fantastyczne historie}
\author{Antyradek}
\maketitle
\tableofcontents
	\input{s01.tex}
	\input{s02.tex}
	\input{s03.tex}
	\input{s04.tex}
	\input{s05.tex}
	\input{s06.tex}
	\input{s07.tex}
	\input{s08.tex}
	\input{s09.tex}
	\input{s10.tex}
	\input{s11.tex}
\end{document}
