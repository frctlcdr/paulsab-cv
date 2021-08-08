# paulsab.cv

## Prerequisites

You will need `pandoc` to render the Rmarkdown. On a Mac, install using

```bash
brew install pandoc
```

For linux,check the [pandoc installation instructions](https://pandoc.org/installing.html#linux)

## Build

### Using Makefile

```bash
make build
```

### Manualy

```r
renv::restore()
rmarkdown::render(here::here('CV/CV.Rmd'))
```

## Run unit tests

### Using Makefile

```bash
make check
```

### Manually

```bash
Rscript 'tests/testthat.R'
```

