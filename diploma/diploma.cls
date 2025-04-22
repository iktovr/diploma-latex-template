% Author: CatInCosmicSpace
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diploma}[2020/06/01 Report template class]

\DeclareKeys[diploma]{
    fontsize.store = \@fontsize,
    bachelor.if = @bachelor,
    master.if = @master
}
\SetKeys[diploma]{
    fontsize = 14pt,
    bachelor
}
\ProcessKeyOptions[diploma]\relax

\if@bachelor
    \def\degree{бакалавр}
    \def\workName{выпускная квалификационная работа бакалавра}
    \def\workNameIn{выпускной квалификационной работе бакалавра}
    \def\workNameShort{ВКРБ}
    \def\profileType{Профиль}
    \def\supervisorType{Руководитель}
\fi

\if@master
    \def\degree{магистр}
    \def\workName{выпускная квалификационная работа магистра}
    \def\workNameIn{выпускной квалификационной работе магистра}
    \def\workNameShort{ВКРМ}
    \def\profileType{Магистерская программа}
    \def\supervisorType{Научный руководитель}
\fi

\LoadClass{article}
\RequirePackage[russian]{babel}

\RequirePackage{01-base}
\RequirePackage{02-construction}
\RequirePackage{03-numbering}
\RequirePackage{04-section-numbering}
\RequirePackage{05-figures}
\RequirePackage{06-tables}
\RequirePackage{07-footnotes}
\RequirePackage{08-formulas}
\RequirePackage{09-cites}
\RequirePackage{10-titlepage}
\RequirePackage{11-performers}
\RequirePackage{12-abstract}
\RequirePackage{13-contents}
\RequirePackage{14-terms-and-definitions}
\RequirePackage{15-list-of-abbreviations}
\RequirePackage{16-references}
\RequirePackage{17-appendices}
\RequirePackage{18-extra}
\RequirePackage{19-counters}
\RequirePackage{20-listing}
\RequirePackage{21-math}
\RequirePackage{22-algorithms}

\makeglossaries
