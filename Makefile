out = 2ii36-exam
markdown = pandoc
markdownopts = -s --template template/template.html
toc = --toc

all: $(out).html

$(out).html:
	$(markdown) $(markdownopts) $(toc) *.md > $(out).html

$(out)-print.html:
	$(markdown) $(markdownopts) *.md > $(out)-print.html

clean:
	rm -f $(out).html
	rm -f $(out)-print.html
