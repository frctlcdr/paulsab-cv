# h/t to @jimhester and @yihui for this parse block:
# https://github.com/yihui/knitr/blob/dc5ead7bcfc0ebd2789fe99c527c7d91afb3de4a/Makefile#L1-L4
# Note the portability change as suggested in the manual:
# https://cran.r-project.org/doc/manuals/r-release/R-exts.html#Writing-portable-packages
PKGNAME = `sed -n "s/Package: *\([^ ]*\)/\1/p" DESCRIPTION`
PKGVERS = `sed -n "s/Version: *\([^ ]*\)/\1/p" DESCRIPTION`


all: check

build: install_deps
	Rscript -e "rmarkdown::render(here::here('CV/CV.Rmd'))"

check: build
	Rscript 'tests/testthat.R'

install_deps:
	Rscript -e 'renv::restore()'

install: build
	echo "\nNothing to install, this is a dummy package.\nOpen CV/CV.pdf instead.\n"

clean:
	Rscript -e 'renv::clean()'
