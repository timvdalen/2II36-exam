out = 2ii36-exam
markdown = pandoc
markdownopts = -s --toc --template template/template.html

all: $(out).html

$(out).html:
	$(markdown) $(markdownopts) *.md > $(out).html

clean:
	rm -f $(out).html
