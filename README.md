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
Is meant to be used in conjunction with new version of `testthat`, which has been published to CRAN on 2017-12-13 (version 2.0.0).

Install with `remotes`:

```r
remotes::install_github("miraisolutions/godmode")
```

Or in case you would like to build the vignette as well:

```r
remotes::install_github("miraisolutions/godmode", build_opts = "")
```

### Getting started
To see an example for one possible way of how to use this package, best clone this repository into a new project inside RStudio and have a look at (i.e. read and try to run) `tests/testthat/test-stochModel.R`.

In case of proxy issues have a look at https://gist.github.com/evantoli/f8c23a37eb3558ab8765.

## Proverbs

### `proverbs_a` — success/victory context

- A broken watch is right two times a day
- Cometh the hour, cometh the man
- Don't cross a bridge before you come to it
- Don't mend what ain't broken
- Every dog has its day
- Fortune favours the brave
- Give credit where credit is due
- Good fences make good neighbors
- Good swimmers are often drowned
- Good things come to those who wait
- Hard work never did anyone any harm
- Knowledge is power
- Make hay while the sun shines
- Practice makes perfect
- Slow and steady wins the race
- Strike while the iron is hot
- The best things come in small packages
- The early bird catches the worm. But the second mouse gets the cheese
- The ends justify the means
- The sky is the limit
- Two heads are better than one
- Well begun is half done
- Where there's a will, there's a way

### `proverbs_b` — near-success/perseverance/failure context

- A bad workman blames his tools
- A chain is only as strong as its weakest link
- Ask me no questions, I'll tell you no lies
- Bad news travels fast...
- Barking dogs seldom bite
- Be careful what you wish for, you just might get it!
- Better an egg today than a hen tomorrow!
- Better safe than sorry
- Bitter pills may have blessed effects
- By hook or by crook
- Catch not a shadow and lose the substance
- Don't count your chickens before they're hatched
- Don't make a mountain out of a molehill
- Eat your own dog food
- Every cloud has a silver lining
- Every rose has its thorn
- Failure is the stepping stone for success
- Familiarity breeds contempt
- Fifty percent of something is better than one hundred percent of nothing
- First things first
- Fool me once, shame on you. Fool me twice, shame on me
- Footprints on the sands of time are not made by sitting down
- Forewarned is forearmed
- Forgive and forget
- Garbage in, garbage out
- Haste makes waste
- If at first you don't succeed, try, try again
- It is always darkest before the dawn
- It's no use crying over spilled milk
- Learn to walk before you run
- Never put off till tomorrow what you can do today
- No pain, no gain
- Nothing ventured, nothing gained
- Old habits die hard
- Patience is a virtue
- Pride comes before a fall
- Rome wasn't built in a day
- The exception proves the rule
- The grass is always greener on the other side
- The road to hell is paved with good intentions
- Time heals all wounds
- Too many cooks spoil the broth
- You can lead a horse to water, but you can't make it drink
- You can't make an omelette without breaking eggs
- You reap what you sow

## Optional
If you like to play sounds, make sure to install the `audio` package from **CRAN**.
Then, in order to get something more fun than just a simple beep, you are free to replace the stub wave files in the external data sub-directory `inst/extdata` with some of your own music files, to which you own the license rights.

(The files should be named `Die.wav` and `GameOver.wav`, as to me the **Nintendo** sounds were the most befitting.)
