pandoc -s --toc --toc-depth=2 CH1.md CH2.md CH3.md CH4.md -o CH1.tex --pdf-engine=xelatex -H header.tex
xelatex --shell-escape CH1.tex
