pandoc -s --toc --toc-depth=2 CH1.md CH2.md CH3.md CH4.md Appendix.md -o CH1.tex --pdf-engine=xelatex -H header.tex
xelatex --extra-mem-bot=100000000  -extra-mem-top=100000000 --shell-escape CH1.tex
