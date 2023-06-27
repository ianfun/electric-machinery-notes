#!/usr/bin/env bash

pandoc -s --toc --toc-depth=2 CH5.md CH6.md CH7.md CH8.md CH9.md --pdf-engine=xelatex -o CH1.tex -H header.tex && xelatex --shell-escape CH1.tex
