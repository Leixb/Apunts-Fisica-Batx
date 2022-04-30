$pdf_mode = 4;
@default_files = ('fisica.tex');
$lualatex = "lualatex %O -shell-escape -pretex='\pdfvariable suppressoptionalinfo 512\relax' -usepretex %S";
