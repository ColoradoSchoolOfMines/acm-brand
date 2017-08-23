% LaTeX class for ACM Tech Talk Tuesday flyers
% Author: Sumner Evans

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{techtalk}[2017/08/08 LaTeX class for typesetting ACM Tech Talk Tuesday flyers]

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
    family=CS,
    prefix=CS@,
}

% Necessary
% These commands should be used in the preamble (or else you will get an error)
\newcommand{\@companyname}{\@latex@error{No \noexpand\companyname given}\@ehc}
\newcommand{\@talktitle}{\@latex@error{No \noexpand\talktitle given}\@ehc}
\newcommand{\@companylogo}{\@latex@error{No \noexpand\companylogo given}\@ehc}
\newcommand{\@speakername}{\@latex@error{No \noexpand\speakername given}\@ehc}
\newcommand{\@talkdate}{\@latex@error{No \noexpand\talkdate given}\@ehc}
\newcommand{\@talktime}{6:00}
\newcommand{\@location}{\@latex@error{No \noexpand\location given}\@ehc}
\newcommand{\@foodtype}{PIZZA}

\newcommand{\companyname}[1]{\renewcommand{\@companyname}{#1}}
\newcommand{\talktitle}[1]{\renewcommand{\@talktitle}{#1}}
\newcommand{\companylogo}[1]{\renewcommand{\@companylogo}{#1}}
\newcommand{\speakername}[1]{\renewcommand{\@speakername}{#1}}
\newcommand{\talkdate}[1]{\renewcommand{\@talkdate}{#1}}
\newcommand{\talktime}[1]{\renewcommand{\@talktime}{#1}}
\newcommand{\location}[1]{\renewcommand{\@location}{#1}}
\newcommand{\foodtype}[1]{\renewcommand{\@foodtype}{#1}}

% Creates the sidebar with location and time info
\newenvironment{sidebar}[1][l]
{\wrapfigure{#1}{0.4\textwidth}\mdframed[backgroundcolor=gray!20,skipabove=0pt,skipbelow=0pt]}
{\endmdframed\endwrapfigure}

% Generates the entire flyer from the parameters
\newcommand{\makeflyer}[0]{
    \begin{multicols*}{2}
        \begin{center}
            \null\vfill

            \includegraphics[height=1.3in]{\@companylogo}
            \section*{\@talktitle}
            \subsection*{\@speakername}

            \vfill\null
            \includegraphics[width=2in]{../resources/cmapp.png}
            \vspace*{0.5cm}
            \columnbreak
            \null\vspace*{1cm}

            \section*{ACM Tech Talk Tuesday}
            \subsection*{\@talkdate}
            \subsection*{\@talktime}
            \subsection*{\@location}
            \textbf{All} are welcome $\cdot$ \textbf{FREE \@foodtype!}

            \vspace{1cm}
            \includegraphics[width=2in]{../resources/pizza.png}

            \vfill\null
            \includegraphics[width=2in]{../resources/CS@Mines.png}
        \end{center}
    \end{multicols*}
}

\RequirePackage{wrapfig}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{lipsum}

\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{article}}

% Letter size, landscape paper
\LoadClass[12pt,letterpaper,landscape]{article}

% Set page margin size using the geometry package
\RequirePackage[margin=0.3in,headsep=0.5in,footskip=0.1in,includehead,head=1.3in]{geometry}

% Disable page numbering
\RequirePackage{lipsum}
\pagenumbering{gobble}

% Header
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\pagestyle{fancy}
\fancyhead[L]{\hspace{0.5cm}\includegraphics[width=4in]{../../logo/triangle/full.pdf}}
\fancyhead[R]{\includegraphics[width=5in]{../resources/cs.png}\vspace{0.2in}\hspace{0.5cm}}
\renewcommand{\headrulewidth}{0pt}

\RequirePackage{parskip} % Remove paragraph indentation

% Multiple columns by default
\RequirePackage{multicol}
\setlength{\columnseprule}{1pt}

% Font
\RequirePackage{fontspec}
\setmainfont{Gotham Medium}
