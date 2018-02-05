\documentclass[a4paper,12pt]{book}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[polish]{babel}
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
ifdef(`dumb', `\ifdumb', `')

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
\end{document}
