\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ispit}[2024/02/09 1.0 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{graphicx} % Required for the inclusion of images

\usepackage{xcolor}

\usepackage{amsmath} % Required for some math elements 
\usepackage{amssymb}


% brojač
\newcounter{cjelina} % zbog kompatibilnosti sa starim formatom zadataka
\newcounter{zadatak}

\newcommand{\Naslovnica}[3]{
    \begin{titlepage}
        \begin{center}
            \textbf{\Large Sveučilište u Zagrebu}\\[0.3cm]
            \textbf{\Large Geotehnički fakultet}\\[2.7cm]
            {\large
            \renewcommand{\arraystretch}{1.5}
            \setlength{\tabcolsep}{0.4cm}
            \begin{tabular}{|c|c|c|c|c|c|}
                \hline
                \multicolumn{5}{|c|}{Riješeni zadaci} & Ocjena \\ 
                \hline
                1 & 2 & 3 & 4 & 5 & \\
                \hline
            \end{tabular}\\[2.7cm]
            }
%            \textbf{\Huge #1 iz kolegija Fizika I}\\[0.9cm]
            \textbf{\Huge \textcolor{red}{Rješenja:#1} iz kolegija Fizika I}\\[0.9cm]  %%% RJEŠENJA
%            \textsc{\LARGE Fizika 1}\\[0.7cm]
            {\large Akademska godina #2}\\[0.4cm]
            \textbf{\large #3}\\[2.7cm]
            {\Large Obavezno ispuniti:}\\[0.8cm]
            \parbox[t]{10cm}{
                {\large Prezime: \hrulefill}\\[0.5cm]
                {\large Ime: \hrulefill}\\[0.5cm]
                {\large Vlastoručni potpis: \hrulefill}\\[0.5cm]
            }
        \end{center}
    \end{titlepage}
} % \Naslovnica

\newcommand{\Staza}{}
\newcommand{\PostaviStazu}[1]{\renewcommand{\Staza}{#1}}

\newcommand{\Zadatak}[1]{
    \newpage
    %\stepcounter{zadatak}
    %\textbf{\arabic{zadatak}.}
    \input{\Staza#1}
} % \Zadatak

\AtBeginDocument{
    \pagenumbering{gobble}
} % \AtBeginDocument

% naredbe u izvornim datotekama zadataka
\newcommand{\Oznaka}[3]{}
\newcommand{\Komentar}[1]{}
\newcommand{\Rokovi}[1]{}
\newcommand{\Tekst}[1]{\stepcounter{zadatak}
    \noindent 
    \textbf{\arabic{zadatak}.} #1\par
} % \Tekst
\newcommand{\Rjesenje}[1]{\vspace{0.3cm}\noindent{}Rješenje: #1\par} %% Umjeto {} stavi to % ili to biti prazno {}
\newcommand{\Postupak}[1]{#1}


