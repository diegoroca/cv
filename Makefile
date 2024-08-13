default: quick

build:
	pdflatex -interaction=nonstopmode -quiet main.tex
	biber --quiet main
	pdflatex -interaction=nonstopmode -quiet main.tex
	pdflatex -synctex=1 -interaction=nonstopmode -quiet main.tex
	echo "building done"

quick:
	pdflatex -synctex=1 -interaction=nonstopmode -quiet main.tex
	echo "quick build done"


view:
	echo "opening pdf output"
	acrobat.exe main.pdf
	echo "pdf closed"

clear:
	del *.aux
	del main.log
	del main.synctex.gz
	del main.toc
	del main.bcf
	del main.blg
	del main.lof
	del main.lot
	del main.run.xml
	del main.bbl
	echo "project outputs cleared"
