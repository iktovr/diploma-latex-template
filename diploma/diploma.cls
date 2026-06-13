% Author: CatInCosmicSpace
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diploma}[2020/06/01 Report template class]

\DeclareKeys[diploma]{
    fontsize.store = \@fontsize,
    bachelor.if = @bachelor,
    master.if = @master,
    handout.if = @handout,
}
\SetKeys[diploma]{
    fontsize = 14pt,
    bachelor
}
\ProcessKeyOptions[diploma]\relax

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

% Значения по умолчанию
\departmentType{}

\if@bachelor
    \degree{бакалавр}
    \workType{выпускная квалификационная работа бакалавра}
    \workTypeDat{выпускной квалификационной работе бакалавра}
    \workTypeAcc{выпускную квалификационную работу бакалавра}
    \workTypeShort{ВКРБ}
    \profileType{Профиль}
    \supervisorType{Руководитель}
\fi

\if@master
    \degree{инженер-исследователь}
    \workType{выпускная квалификационная работа}
    \workTypeDat{выпускной квалификационной работе}
    \workTypeAcc{выпускную квалификационную работу}
    \workTypeShort{ВКР}
    \profileType{Программа}
    \supervisorType{Научный руководитель}
\fi

\if@handout
    \workType{раздаточный материал к\\\@workTypeDat}
\fi
