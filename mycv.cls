\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2024/02/02 My custom CV class]
\RequirePackage{titlesec}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{lmodern}
\RequirePackage{marginnote}
\RequirePackage{graphicx}
\usepackage[a4paper,left=1cm,right=1cm,top=1cm,bottom=1cm]{geometry}
\RequirePackage{multicol}
\RequirePackage{blindtext}
\setlength{\parindent}{0pt}
\RequirePackage{array}
\RequirePackage{etoolbox}
\RequirePackage{fontawesome5}

\newenvironment{Itemize}{\begin{itemize}\setlength\itemsep{0cm}}{\end{itemize}}

%Section format
\titleformat{\section}
	{\Large\bf\raggedright}
	{}{0em}
	{}
	[\titlerule]

\titleformat{\subsection}
	{\large\raggedright}
	{}{0em}
	{}

\newcommand{\datedentry}[4]{\subsection[#1]{\href{#2}{\textbf{#1}} \hfill \small{#3}\\\small{#4}}}

\newenvironment{EntryDatedLogo}[6]{
	\begin{minipage}{0.1\textwidth}
		\vspace{-0.3cm}\includegraphics[width=#6\textwidth]{#5}
	\end{minipage}
	\begin{minipage}{0.89\textwidth}
		\datedentry{#1}{#2}{#3}{#4}
		\vspace{-0.2cm}
		}{
	\end{minipage}
}

\newenvironment{EntryDatedImage}[7]{
	\vspace{-0.2cm}
	\begin{minipage}{0.3\textwidth}
		\vspace{-0.3cm}\includegraphics[width=#6\textwidth]{#5}
	\end{minipage}
	\begin{minipage}{0.69\textwidth}
		\datedentry{#1}{#2}{#3}{#4}
		\vspace{-0.2cm}
		}{
	\end{minipage}
}

\newenvironment{EntryDated}[5]{
	\datedentry{#1}{#2}{#3}{#4}
}

\newcommand{\pubentry}[3]{% number, cite, status
	\begin{minipage}{0.75\textwidth}
		\noindent\small{[#1] #2}
	\end{minipage}%
	\begin{minipage}{0.25\textwidth}
		\hfill #3%
	\end{minipage}\\\vspace{0.25cm}
}

%contact info
\newcommand{\name}[3]{
	{\Huge{\bf#1}}\\[0.2cm]
	{\small #2 {\Large\textperiodcentered} #3 }\\[0.5cm]
}

\newcommand{\mobile}[1]{
\faMobile*\ \href{tel:#1}{#1}
}

\newcommand{\email}[1]{
\faEnvelope\ \href{mailto:#1}{#1}
}

\newcommand{\telegram}[1]{
\faTelegramPlane\ \href{https://t.me/#1}{t.me/#1}
}

\newcommand{\homepage}[1]{
\faHome\ \href{https://#1}{#1}
}

\newcommand{\linkedin}[1]{
\faLinkedin\ \href{https://www.linkedin.com/#1}{#1}
}

\newcommand{\github}[1]{
\faGithub\ \href{https://github.com/#1}{#1}
}

\newcommand{\contact}[6]{
    \mobile{#1} {\Large\textperiodcentered} %
	\email{#2} {\Large\textperiodcentered} %
	\telegram{#3}\\[0.2cm]
	\homepage{#4} {\Large\textperiodcentered} %
	\linkedin{#5} {\Large\textperiodcentered} %
	\github{#6}\\[0.3cm]
}

% XeLaTeX packages.
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% Font: Use "Tinos" as the main typeface (\textnormal{}, \normalfont).
% The "Tinos" fonts are released under the Apache License Version 2.0,
% and can be downloaded for free at <http://www.fontsquirrel.com/fonts/tinos>.
% Symbol table: <http://www.fileformat.info/info/unicode/font/tinos/grid.htm>
\RequirePackage{tinos}