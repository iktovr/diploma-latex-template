$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -shell-escape %O %S';
$pdflatex = $xelatex;

$ENV{'TEXINPUTS'} = './styles//:./styles/diploma//:' . $ENV{'TEXINPUTS'};
