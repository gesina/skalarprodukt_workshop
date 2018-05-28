#######
# Makefile
# for compiling sources of project skalarprodukt
#
# Prerequesites:
# - GNU make
# - TeXlive2018 distribution
# - inkscape (to generate the .png files)
#######


LATEXMK = latexmk -recorder -deps -quiet
LATEXMK_OPTIONS= -pdf -pdflatex="lualatex --interaction=batchmode"
PROJECT=skalarprodukt
MAINTEXFILES=$(PROJECT)_beamer.tex $(wildcard $(PROJECT)_aufgaben-*.tex) $(wildcard $(PROJECT)-*.tex)
MAINPDFFILES=$(patsubst %.tex,%.pdf,$(MAINTEXFILES))

PICSFOLDER=./Bilder
SVGs=$(wildcard $(PICSFOLDER)/*.svg)
PICS_FROM_SVGs=$(patsubst %.svg,%.png,$(SVGs))
OTHER_PICS_STEM=faltung_gimp_screenshot \
horizontale_kante-dunkel horizontale_kante-dunkel-original \
horizontale_linie horizontale_linie-original \
vertikale_kante-dunkel vertikale_kante-dunkel-original \
relief relief-original \
schaerfen schaerfen-original
OTHER_PICS=$(patsubst %,$(PICSFOLDER)/%.png,$(OTHER_PICS_STEM))
PICS = $(PICS_FROM_SVGs) $(OTHER_PICS)
#PICS=$(wildcard $(PICSFOLDER)/*.png) $(wildcard $(PICSFOLDER)/*.jpg)

# Possible debugging
#$(info $$PICS is [${PICS}])
#$(info $$SVGs is [${SVGs}])
#$(info $$MAINPDFFILES is [${MAINPDFFILES}])


.PHONY: all clean cleanall aufgaben vortrag handout notizen

all: $(MAINPDFFILES)

aufgaben: $(PROJECT)_aufgaben-*.pdf
vortrag: $(PROJECT)-*.pdf $(PROJECT)_beamer*.pdf
handout: $(PROJECT)*-handout.pdf
notizen: $(PROJECT)*-loesungen.pdf $(PROJECT)_beamer*.pdf


%.pdf: %.tex $(PICS)
	$(LATEXMK) $(LATEXMK_OPTIONS) $< > /dev/null

%-handout.tex: %.tex $(PICS)
	touch $@

%-loesungen.tex: %.tex $(PICS)
	touch $@

$(PICS_FROM_SVGs): %.png: %.svg
	inkscape -D -z --file=$^ --export-png=$@ > /dev/null


clean:
	$(LATEXMK) -c

cleanall:
	$(LATEXMK) -C
	rm -f $(PICS_FROM_SVGs)
