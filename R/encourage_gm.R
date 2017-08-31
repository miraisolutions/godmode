encourage_gm <- function() {
  x <- c(
    "I hereby declare all your tests as passed!",
    "No-one can fool you!",
    "Right in the pink!",
    "As expected!",
    "You really know what to test!",
    "Oops! You did it again!",
    "You lift TDD to a whole new level!",
    "Impossible!",
    "There's always an alternative fact",
    "It's a conspiracy!",
    "Another hit!",
    "No regrets!"
  )
  checkAudio <- requireNamespace("audio", quietly = TRUE)
  if (checkAudio) {
    godmode:::playWave("Die.wav")
    godmode:::playWave("GameOver.wav")
  }
  godmode:::randomize(x)
}
