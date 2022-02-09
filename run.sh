
cd code/

pdflatex --shell-escape -output-directory=../banners/ Einstein_quote01.tex

pdflatex --shell-escape -output-directory=../banners/ Article1Section8.tex

pdflatex --shell-escape -output-directory=../banners/ HedgehogsAndFoxes.tex

pdflatex --shell-escape -output-directory=../banners/ rational_circle.tex

xelatex --shell-escape -output-directory=../banners/ FirstAmendement.tex

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
cd ../banners/
#
latexmk -C *


