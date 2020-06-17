build:
	./build.sh

split:
	pdftk master-thesis.pdf cat 1-2 output title-page.pdf && \
	pdftk master-thesis.pdf cat 3-4 output specification.pdf && \
	pdftk master-thesis.pdf cat 5-6 output annotation.pdf && \
	pdftk master-thesis.pdf cat 7-end output thesis.pdf;

clean:
	rm -f {master-thesis,presentation}.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out,nav,snm,vrb}
	
superclean:
	rm -f *.pdf

antiplagiat:
	./antiplagiat.sh

all: build split antiplagiat
