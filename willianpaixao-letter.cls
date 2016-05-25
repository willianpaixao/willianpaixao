\ProvidesClass{willianpaixao-resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{letter}
}
\ProcessOptions\relax
\LoadClass{letter}

\usepackage{geometry}
\geometry{a4paper,top=2cm,left=2cm,right=2cm}

%\usepackage{hyperref}

%\usepackage{cite}
%\renewcommand\refname{\vskip -1.5cm}

\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{primary}{HTML}{2b2b2b} 
%\definecolor{date}{HTML}{666666} 
%\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

\usepackage{fontspec}
\setromanfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

%\usepackage[utf8]{inputenc}
%\usepackage[T1]{fontenc}

