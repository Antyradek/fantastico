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
\usepackage{datetime}

\pagestyle{fancy}

\input{macros.tex}
ifdef(`dumb', `\dumbtrue', `')

\begin{document}
\title{Fantastyczne historie}
\author{Antyradek}
\maketitle
\tableofcontents
	\input{contact.tex}
	\input{werewolf.tex}
	\input{priest.tex}
	\input{keyboards.tex}
	\input{wedding.tex}
	\input{sphere.tex}
	\input{restaurant.tex}
	\input{geenie.tex}
	\input{house.tex}
	\input{clocktower.tex}
	\input{atom.tex}
	\input{mine.tex}
\end{document}
