
xelatex template_background.beamer.tex & \ 
	convert -density 300 template_background.pdf template_background.png

xelatex background001.beamer.tex & \ 
	convert -density 1200 background001.beamer.pdf background001.png

xelatex background002.beamer.tex & \ 
	convert -density 1200 background002.beamer.pdf background002.png

xelatex background003.beamer.tex & \ 
	convert -density 1200 background003.beamer.pdf background003.png

xelatex background004.beamer.tex & \ 
	convert -density 1200 background004.beamer.pdf background004.png
