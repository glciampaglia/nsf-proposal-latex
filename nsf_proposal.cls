\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposalnsf}[2008/06/01 NSF proposal style v1.3 SGLS]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[10pt]{article}
\RequirePackage{calc}
% This is reviewer-friendly (can switch back to numbers if space is needed)
\RequirePackage[round,sort]{natbib}
\RequirePackage{breakcites}
\bibliographystyle{plainnat}
% Palatino font 10pt / alternatives Times 11pt (minimum, remove linespread)
\RequirePackage[sc]{mathpazo}
\linespread{1}

\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\addtolength{\voffset}{-1in}
\addtolength{\hoffset}{-1in}
\setlength{\topmargin}{1in}
\setlength{\oddsidemargin}{1in}
\setlength{\evensidemargin}{1in}
\setlength{\textwidth}{\paperwidth - 2in}
\setlength{\textheight}{\paperheight - 2in}
\setlength{\footskip}{36pt}
\setlength{\marginparsep}{0.5cm}
\setlength{\marginparwidth}{1.5cm}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\parskip}{0.2cm plus3mm minus2mm}
\setlength{\parindent}{0pt}  % indented line with ragged text do not look good

\widowpenalty10000
\clubpenalty10000

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{\thepage}
\rfoot{}

% FONTS
\usepackage{textcomp}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
% disable ligatures
\usepackage{microtype}
\DisableLigatures[f]{encoding = *, family = * }

% TEXT/PARAGRAPH LAYOUT
\usepackage[document]{ragged2e}
\usepackage{enumerate}
\usepackage{enumitem}
\usepackage{setspace}

% MISC
\usepackage[format=plain,indention=0cm, font=small, labelfont=bf]{caption}
% \usepackage{fancyhdr}

% FIGURES, GRAPHICS
\usepackage[pdftex]{graphicx}
\usepackage{wrapfig}
\graphicspath{{./figures/}}

% MATH
\usepackage{amsmath, amsthm, amssymb, amsfonts}

% TABLES
\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{multicol}
\newcolumntype{Y}{ >{\RaggedRight\arraybackslash}X}
\newcommand\T{\rule{0pt}{2.6ex}}      
\newcommand\B{\rule[-1.2ex]{0pt}{0pt}}

% CHECKLIST
\RequirePackage[normalem]{ulem}
\newcommand{\checklistComplete}[1]{\checkmark \ \sout{#1}}
\newcommand{\checklistTodo}[1]{$\square$ {#1}}
\newcommand{\checklistNotNeeded}[1]{$\times$ \sout{#1}}

% COLORS
\RequirePackage[usenames,dvipsnames]{color,xcolor}

% TEXT FORMATTING
% Nice underlines with \ul, \ulemph
\definecolor{dark-gray}{gray}{0.25}
\usepackage{soul}
\setuldepth{a}
\setulcolor{dark-gray}
\newcommand{\ulemph}[1]{%
\emph{\ul{#1}}}

% HEADINGS/TITLE
% title
\date{}
\author{}
\RequirePackage{titling}
\setlength{\droptitle}{-0.75in}
% headings
\RequirePackage[compact]{titlesec}
% bibliography
\renewcommand{\refname}{References Cited}

% PDF support (better to load it last)
\usepackage[pdftex,breaklinks=true]{hyperref}
% vim:set ft=tex:

% ANNOTATIONS
\newcommand{\fromSolicitation}[1]{\textcolor{blue}{[\textbf{FROM SOLICITATION:} #1]}}
\newcommand{\old}[1]{\textcolor{red}{OLD:}{#1}}
\newcommand{\todo}[1]{\textcolor{orange}{TODO: [}{#1}\textcolor{orange}{ ]}}
\newcommand{\idea}[1]{\textcolor{blue}{IDEA:}{#1}}
\newcommand{\info}[1]{\textcolor{green}{INFO:}{#1}}
\newcommand{\fix}[1]{\textcolor{red}{FIX: [}{#1}\textcolor{red}{ ]}}
%\newcommand{\comment}[1]{\textcolor{blue}{COMMENT:}{#1}}
\newcommand{\ignore}[1]{\textcolor{blue}{IGNORE: }{\sout{#1}}}

% LIPSUM
% Show lipsum text in red, helpful for spacing the document.
\RequirePackage{lipsum}
\SetLipsumParListItemStart{\color{red}}
