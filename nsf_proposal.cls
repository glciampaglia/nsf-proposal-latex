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
\usepackage{parskip}
\usepackage[document]{ragged2e}
\usepackage{enumerate}

% MISC
\usepackage[format=plain,indention=0cm, font=small, labelfont=bf]{caption}
% \usepackage{fancyhdr}

% FIGURES, GRAPHICS
\usepackage[pdftex]{graphicx}
\usepackage{wrapfig}
\graphicspath{{./figures/}}

% MATH
\usepackage{amsmath, amsthm, amssymb, amsfonts}
\usepackage[amssymb]{SIunits}

% TABLES
\usepackage{booktabs}

% COLORS
\RequirePackage[usenames,dvipsnames]{color,xcolor}

% Nice underlines with \ul, \ulemph
\definecolor{dark-gray}{gray}{0.25}
\usepackage{soul}
\setuldepth{a}
\setulcolor{dark-gray}
\newcommand{\ulemph}[1]{%
\emph{\ul{#1}}}

\renewcommand{\refname}{References Cited}

% PDF support (better to load it last)
\usepackage[pdftex,breaklinks=true]{hyperref}
% vim:set ft=tex:
