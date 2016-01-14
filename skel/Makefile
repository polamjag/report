PANDOC_TEMPLATE = report
.DEFAULT_GOAL := report.pdf

report.html: report.md
	pandoc report.md \
		-f markdown_github+pandoc_title_block+fenced_code_attributes+definition_lists+table_captions+pipe_tables \
		--standalone --self-contained -t html5 \
		--highlight-style pygments \
		--template=$(PANDOC_TEMPLATE) \
		-o report.html

report.pdf: report.html
ifdef PDF_HEADER
	wkhtmltopdf \
		-T 15mm \
		report.html \
		$(WKHTMLTOPDF_ARGS) \
		--header-center "$(PDF_HEADER)" \
		--footer-center '[page] / [topage]' \
		--header-font-size 8 \
		--footer-font-size 8 \
		report.pdf
else
	wkhtmltopdf \
		-T 15mm \
		report.html \
		$(WKHTMLTOPDF_ARGS) \
		--footer-center '[page] / [topage]' \
		--header-font-size 8 \
		--footer-font-size 8 \
		report.pdf
endif

clean:
	rm report.html report.pdf

watch:
	filewatcher report.md make
