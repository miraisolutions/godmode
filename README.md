# godmode
[![Build Status](https://travis-ci.org/miraisolutions/godmode.svg?branch=master)](https://travis-ci.org/miraisolutions/godmode)

`Godmode` package for **R**

Provides alternative praise and encouragement, either in *god-mode* or *proverbs* mode.

### Installation
Requires latest version of `testthat`:

`devtools::install_github("hadley/testthat")`

Install with `devtools`:

`devtools::install_github("miraisolutions/godmode")`

Or in case you would like to build the vignette as well:

`devtools::install_github("miraisolutions/godmode", build_vignettes = TRUE)`

### Getting started
To see an example for one possible way of how to use this package, best clone this repository into a new project inside RStudio and have a look at (i.e. read and try to run) `tests/testthat/test-stochModel.R`.

In case of proxy issues have a look at https://gist.github.com/evantoli/f8c23a37eb3558ab8765.

## Optional
If you like to play sounds, make sure to install the `audio` package from **CRAN**.
Then, in order to get something more fun than just a simple beep, you are free to replace the stub wave files in the external data sub-directory `inst/extdata` with some of your own music files, to which you own the license rights.

(The files should be named `Die.wav` and `GameOver.wav`, as to me the **Nintendo** sounds were the most befitting.)
