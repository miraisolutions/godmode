<img src="man/figures/godmode.png" align="right" width="20%" height="auto"/>

# godmode
<!-- badges: start -->
[![R-CMD-check](https://github.com/miraisolutions/godmode/actions/workflows/ci.yaml/badge.svg)](https://github.com/miraisolutions/godmode/actions/workflows/ci.yaml)
[![codecov](https://codecov.io/gh/miraisolutions/godmode/branch/master/graph/badge.svg)](https://codecov.io/gh/miraisolutions/godmode)
<!-- badges: end -->

`Godmode` package for **R**

Provides alternative praise and encouragement, either in *god-mode* or *proverbs* mode.
Aims to provide more variety and fun in testing.

Also offers a set of unexported functions that can be useful for quick & dirty substitution of functions in namespaces of other packages, which for some people / teams / R-analytics-setups can help in accelerating proto-typing, testing of changes and debugging and ultimately time-to-production.
It is advised to get a good understanding of the base functions used in this part and their behavior, before attempting to make use of this elsewhere, in order to avoid undesired side effects and break-downs.

For related reasons, this package will quite certainly never make it to 
[![CRAN](http://www.r-pkg.org/badges/version/godmode)](https://cran.r-project.org/package=godmode) <!--[![Downloads](http://cranlogs.r-pkg.org/badges/godmode?color=brightgreen)](http://www.r-pkg.org/pkg/godmode)-->

### Installation
Is meant to be used in conjunction with newer versions of `testthat`, which have been published to CRAN on 2017-12-13 (version 2.0.0) and later.

Install with `remotes`:

```r
remotes::install_github("miraisolutions/godmode")
```

### Getting started
To see an example for one possible way of how to use this package, best clone this repository into a new project inside RStudio and have a look at (i.e. read and try to run) `tests/testthat/test-stochModel.R`.

In case of proxy issues have a look at https://gist.github.com/evantoli/f8c23a37eb3558ab8765.

## Proverbs

The `proverbs` dataset is a data.frame with a `proverb` and a `score` column. The score ranges from -100 to +100: positive means success/victory context, negative means perseverance/failure context, and zero means the proverb fits either. The absolute value of the score is used as a sampling weight.

| Proverb | Score |
|---------|------:|
| Cometh the hour, cometh the man | 80 |
| Don't cross a bridge before you come to it | 20 |
| Don't mend what ain't broken | 20 |
| Every dog has its day | 60 |
| Fortune favours the brave | 90 |
| Give credit where credit is due | 40 |
| Good fences make good neighbors | 20 |
| Good swimmers are often drowned | 10 |
| Good things come to those who wait | 50 |
| Hard work never did anyone any harm | 70 |
| Knowledge is power | 80 |
| Make hay while the sun shines | 70 |
| Practice makes perfect | 80 |
| Slow and steady wins the race | 70 |
| Strike while the iron is hot | 75 |
| The best things come in small packages | 40 |
| The early bird catches the worm. But the second mouse gets the cheese | 30 |
| The ends justify the means | 30 |
| The sky is the limit | 90 |
| Two heads are better than one | 60 |
| Well begun is half done | 65 |
| Where there's a will, there's a way | 85 |
| A bad workman blames his tools | -60 |
| A broken watch is right two times a day | -20 |
| A chain is only as strong as its weakest link | -40 |
| Ask me no questions, I'll tell you no lies | -20 |
| Bad news travels fast... | -50 |
| Barking dogs seldom bite | -30 |
| Be careful what you wish for, you just might get it! | -40 |
| Better an egg today than a hen tomorrow! | -30 |
| Better safe than sorry | -40 |
| Bitter pills may have blessed effects | -50 |
| By hook or by crook | -30 |
| Catch not a shadow and lose the substance | -40 |
| Don't count your chickens before they're hatched | -60 |
| Don't make a mountain out of a molehill | -50 |
| Eat your own dog food | -80 |
| Every cloud has a silver lining | -40 |
| Every rose has its thorn | -30 |
| Failure is the stepping stone for success | -50 |
| Familiarity breeds contempt | -40 |
| Fifty percent of something is better than one hundred percent of nothing | -20 |
| First things first | 0 |
| Fool me once, shame on you. Fool me twice, shame on me | -60 |
| Footprints on the sands of time are not made by sitting down | -40 |
| Forewarned is forearmed | -30 |
| Forgive and forget | -20 |
| Garbage in, garbage out | -50 |
| Haste makes waste | -60 |
| If at first you don't succeed, try, try again | -50 |
| It is always darkest before the dawn | -60 |
| It's no use crying over spilled milk | -70 |
| Learn to walk before you run | -40 |
| Never put off till tomorrow what you can do today | -50 |
| No pain, no gain | -50 |
| Nothing ventured, nothing gained | -30 |
| Old habits die hard | -50 |
| Patience is a virtue | -40 |
| Pride comes before a fall | -70 |
| Rome wasn't built in a day | -50 |
| The exception proves the rule | 0 |
| The grass is always greener on the other side | -50 |
| The road to hell is paved with good intentions | -70 |
| Time heals all wounds | -60 |
| Too many cooks spoil the broth | -60 |
| You can lead a horse to water, but you can't make it drink | -60 |
| You can't make an omelette without breaking eggs | -40 |
| You reap what you sow | -85 |

## Optional
If you like to play sounds, make sure to install the `audio` package from **CRAN**.
Then, in order to get something more fun than just a simple beep, you are free to replace the stub wave files in the external data sub-directory `inst/extdata` with some of your own music files, to which you own the license rights.

(The files should be named `Die.wav` and `GameOver.wav`, as to me the **Nintendo** sounds were the most befitting.)
