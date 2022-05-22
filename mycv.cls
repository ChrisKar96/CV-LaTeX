\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2021/07/10 My custom CV class]
\RequirePackage{titlesec}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{lmodern}
\RequirePackage{marginnote}
\RequirePackage{graphicx}
\usepackage[a4paper,left=1.5cm,right=1.5cm,top=1.5cm,bottom=1.5cm]{geometry}
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

\newenvironment{EntryDatedLogo}[7]{
	\begin{minipage}{0.1\textwidth}
	\vspace{#5}\includegraphics[width=#7\textwidth]{#6}
	\end{minipage}%\hspace*{0.25cm}%
	\begin{minipage}{0.89\textwidth}
		\datedentry{#1}{#2}{#3}{#4}
}{
	\end{minipage}
}

\newenvironment{EntryDatedImage}[7]{
	\begin{minipage}{0.3\textwidth}
		\vspace{#5}\includegraphics[width=#7\textwidth]{#6}
	\end{minipage}%\hspace*{0.25cm}%
	\begin{minipage}{0.7\textwidth}
		\datedentry{#1}{#2}{#3}{#4}
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
	\centering
	{\Huge{\bf#1}}\\[0.2cm]
	{\small #2 {\Large\textperiodcentered} #3 }\\[1cm]
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
\faLinkedin\ \href{https://www.#1}{#1}
}

\newcommand{\github}[1]{
\faGithub\ \href{https://github.com/#1}{#1}
}

\newcommand{\contact}[6]{
    \mobile{#1} {\Large\textperiodcentered} %
	\email{#2} {\Large\textperiodcentered} %
	\telegram{#3}\\[0.25cm]
	\homepage{#4} {\Large\textperiodcentered} %
	\linkedin{#5} {\Large\textperiodcentered} %
	\github{#6}\\[0.5cm]
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