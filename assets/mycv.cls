\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2016/10/23 My custom CV class]
\RequirePackage{titlesec}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{lmodern}
\RequirePackage{marginnote}
\RequirePackage{graphicx}
\RequirePackage[width=18.00cm, height=25.00cm]{geometry}
\RequirePackage{multicol}
\RequirePackage{blindtext}
\setlength{\parindent}{0pt}
\RequirePackage{array}
\RequirePackage{etoolbox}
\RequirePackage{fontawesome5}

\usepackage{graphicx}
\usepackage[width=18.00cm, height=25.00cm]{geometry}
\usepackage{multicol}
\usepackage{blindtext}
\setlength{\parindent}{0pt}
\usepackage{array}
\usepackage{{fontawesome5}}

\newenvironment{Itemize}{\begin{itemize}\setlength\itemsep{0cm}}{\end{itemize}}

%Section format
\titleformat{\section}
	{\Large\bf\scshape\raggedright}
	{}{0em}
	{}
	[\titlerule]

\titleformat{\subsection}
	{\large\raggedright}
	{}{0em}
	{}

\newcommand{\datedentry}[4]{\subsection[#1]{\href{#2}{\textbf{#1}} \hfill \small{#3}\\\small\textsc{#4}}}

\newenvironment{EntryDatedLogo}[7]{
	\begin{minipage}{0.1\textwidth}
	\vspace{#5}\includegraphics[width=#7\textwidth]{#6}
	\end{minipage}%\hspace*{0.25cm}%
	\begin{minipage}{0.9\textwidth}
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
		\hfill \textsc{#3}%
	\end{minipage}\\\vspace{0.25cm}
}

%contact info
\newcommand{\name}[3]{
	\centering
	{\Huge{\bf#1}}\\[0.2cm]
	{\sc \small #2 {\Large\textperiodcentered} #3 }\\[1cm]
}

\newcommand{\mobile}[1]{
\faMobile*\ #1
}

\newcommand{\email}[1]{
\includegraphics[scale=0.02]{../assets/gmail}\ \href{mailto:#1}{#1}
}

\newcommand{\telegram}[1]{
\faTelegramPlane\ \href{https://t.me/#1}{t.me/#1}
}

\newcommand{\homepage}[1]{
\faHome\ \href{#1}{#1}
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

