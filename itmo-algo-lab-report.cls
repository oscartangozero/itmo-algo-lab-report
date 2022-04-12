\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{itmo-algo-lab-report}

\LoadClass[12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage[
    a4paper,
    total={170mm,257mm},
    left=30mm,
    right=10mm,
    top=20mm,
    bottom=20mm]{geometry}
\RequirePackage{booktabs}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[outputdir=./out]{minted}

\newcommand*{\serialnumber}[1]{\gdef\@serialnumber{#1}}
\newcommand*{\studentname}[1]{\gdef\@studentname{#1}}
\newcommand*{\studentgroup}[1]{\gdef\@studentgroup{#1}}
\renewcommand*{\maketitle}{%
    \begin{titlepage}
        \centering
        {\smallМИНИСТЕРСТВО~НАУКИ~И~ВЫСШЕГО~ОБРАЗОВАНИЯ РОССИЙСКОЙ~ФЕДЕРАЦИИ\unskip\strut\par}
        \vspace{0.25cm}
        {\small\bfseriesФЕДЕРАЛЬНОЕ~ГОСУДАРСТВЕННОЕ~АВТОНОМНОЕ ОБРАЗОВАТЕЛЬНОЕ~УЧРЕЖДЕНИЕ~ВЫСШЕГО~ОБРАЗОВАНИЯ
        ``НАЦИОНАЛЬНЫЙ~ИССЛЕДОВАТЕЛЬСКИЙ~УНИВЕРСИТЕТ~ИТМО''\unskip\strut\par}
        \vspace{0.75cm}\hrule\vspace{0.75cm}
        {Факультет программной инженерии и компьютерной техники\unskip\strut\par}
        \vspace{7cm}
        {\Large\bfseriesЛабораторная работа №\@serialnumber\unskip\strut\par}
        {\largeпо ``Алгоритмам и структурам данных''\unskip\strut\par}
        \vspace{2cm}
        {\raggedleft
        Выполнил:\unskip\strut\par
        студент группы \@studentgroup\unskip\strut\par
        \@studentname\unskip\strut\par
        \vspace{1cm}
        Преподаватели:\unskip\strut\par
        Косяков М.С.\unskip\strut\par
        Тараканов Д.С.\unskip\strut\par}
        \vfill
        Санкт-Петербург\unskip\strut\par
        2022\unskip\strut\par
    \end{titlepage}
}

\RequirePackage[hidelinks]{hyperref}
\setcounter{secnumdepth}{0}

\newcommand{\keyword}[1]{\texttt{#1}}

\newmintedfile[cppcode]{cpp}{breaklines,fontsize=\small}

\newenvironment{infotable}{
    \begin{table*}[ht]
        \centering
        \begin{tabular}{ll}
        }{
        \end{tabular}
    \end{table*}
}

\newenvironment{examples}{
    \begin{table*}[ht]
        \centering \ttfamily
        \begin{tabular}{*{2}{p{0.4\textwidth}}}
            \toprule Ввод & Вывод \\
            }{
            \bottomrule
        \end{tabular}
    \end{table*}
}

\newcommand{\example}[2]{
    \midrule #1 & #2 \\
}

\newcommand{\n}{\newline}

\newenvironment{solution}{\newpage\subsection{Решение}}{}
