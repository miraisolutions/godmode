<img src="man/figures/godmode.png" align="right" width="20%" height="auto"/>

# godmode
[![Build Status](https://travis-ci.org/miraisolutions/godmode.svg?branch=master)](https://travis-ci.org/miraisolutions/godmode)
[![codecov](https://codecov.io/gh/miraisolutions/godmode/branch/master/graph/badge.svg)](https://codecov.io/gh/miraisolutions/godmode)

`Godmode` package for **R**

Provides alternative praise and encouragement, either in *god-mode* or *proverbs* mode.
Aims to provide more variety and fun in testing.

Also offers a set of unexported functions that can be useful for quick & dirty substitution of functions in namespaces of other packages, which for some people / teams / R-analytics-setups can help in accelerating proto-typing, testing of changes and debugging and ultimately time-to-production.
It is advised to get a good understanding of the base functions used in this part and their behavior, before attempting to make use of this elsewhere, in order to avoid undesired side effects and break-downs.

For related reasons, this package will quite certainly never make it to 
[![CRAN](http://www.r-pkg.org/badges/version/godmode)](https://cran.r-project.org/package=godmode) <!--[![Downloads](http://cranlogs.r-pkg.org/badges/godmode?color=brightgreen)](http://www.r-pkg.org/pkg/godmode)-->

### Installation
Is meant to be used in conjunction with new version of `testthat`, which has been published to CRAN on 2017-12-13 (version 2.0.0).

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
