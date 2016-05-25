% Intro Options
\ProvidesClass{willianpaixao-resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Page margins and settings
\usepackage[a4paper,hmargin=1.25cm,vmargin=0.75cm]{geometry}
\usepackage{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[
    Color=primary,
    Path = fonts/lato/,
    BoldItalicFont=Lato-RegIta,
    BoldFont=Lato-Reg,
    ItalicFont=Lato-LigIta,
    SmallCapsFont=Lato-Reg
]{Lato-Reg}
\setsansfont[
    Scale=MatchLowercase,
    Mapping=tex-text,
    Path = fonts/raleway/
]{Raleway-ExtraLight}

%\usepackage[utf8]{inputenc}
%\usepackage[T1]{fontenc}
%\usepackage[portuguese]{babel}

% Last updated
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
    \begin{textblock}{60}(155,5)
        \color{date}
        \fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
        \fontsize{8pt}{10pt}\selectfont 
        Last updated on \today
    \end{textblock}
}

% Clear header and footer
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
 
% Name command
\newcommand{\namesection}[3]{
    \centering{
        \fontsize{40pt}{60pt}
        \fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
        \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
    } \\[5pt]
    \centering{
        \color{headings}
        \fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
        \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}
    }
    \vspace{-15pt}
}

% Section separators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Heading command
\titleformat{\section}{
    \color{headings}
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{16pt}{24pt}\selectfont\raggedright\uppercase
}{}{0em}{}

% Subheading command
\titleformat{\subsection}{
    \color{subheadings}
    \fontspec[
        Path = fonts/lato/
    ]{Lato-Bol}
    \fontsize{12pt}{12pt}\selectfont\uppercase
}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}
\fontsize{12pt}{12pt}\selectfont\uppercase {#1} \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
    \color{subheadings}
    \raggedright\scshape
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont
}

% Location command
\newcommand{\location}[1]{
    \color{headings}
    \raggedright
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
    \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt
}{\end{itemize}\vspace{-\topsep}}

