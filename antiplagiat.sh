pdftk title-page.pdf specification.pdf annotation.pdf output header.pdf
convert -density 600 +antialias header.pdf header-img.pdf
rm header.pdf
pdftk header-img.pdf thesis.pdf output thesis-startsev.pdf
rm header-img.pdf
