$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -shell-escape %O %S';
$pdflatex = $xelatex;

ensure_path( 'TEXINPUTS', './styles//');
ensure_path( 'TEXINPUTS', './styles/diploma//');

$clean_ext = "aux bbl blg idx ind lof lot out toc acn acr alg glg glo gls fls log fdb_latexmk snm synctex(busy) synctex.gz(busy) nav xdy glo-abr synctex.gz run.xml bcf";
