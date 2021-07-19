@echo off
chcp 65001

texify.exe --pdf --engine=xetex --tex-option=-synctex=1 main.tex

pause