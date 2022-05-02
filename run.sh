
cd code/

lilypond --png -dresolution=600 -o"../banners/Pray_High_Valyrian.png" Pray_High_Valyrian.ly

lilypond --png -dresolution=600 -o"../banners/BalladeOp24.png" BalladeOp24.ly

pdflatex --shell-escape -output-directory=../banners/ ModusPonens.tex

pdflatex --shell-escape -output-directory=../banners/ ModusTollens.tex

pdflatex --shell-escape -output-directory=../banners/ Einstein_quote01.tex

pdflatex --shell-escape -output-directory=../banners/ Colbrook_etal_2022.tex

pdflatex --shell-escape -output-directory=../banners/ Article1Section8.tex

pdflatex --shell-escape -output-directory=../banners/ HedgehogsAndFoxes.tex

pdflatex --shell-escape -output-directory=../banners/ rational_circle.tex

xelatex --shell-escape -output-directory=../banners/ FirstAmendement.tex

pdflatex --shell-escape -output-directory=../banners/ Hilbert_curve.tex

python3 Recaman.py
#
Rscript Binet_Fibonacci.R
#
Rscript love.R
#
/Applications/SageMath/sage Bessel_3_x.sage
#
convert -density 300 recaman_100.svg recaman_100.png
#
mv *.png ../banners/
#
latexmk -C *
#
cd ../banners/
#
latexmk -C -f *


