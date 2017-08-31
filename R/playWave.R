playWave <- function(waveFile) {
  if (length(waveFile) != 1)
    return(invisible())
  if (tools::file_ext(waveFile) != "wav")
    return(invisible())

  wFile <- system.file(c("extdata", "inst/extdata"), waveFile, package = "godmode")
  wFile <- wFile[wFile != ""][1]
  if (!file.exists(wFile))
    return(invisible())
  audio::play.audioSample(audio::load.wave(wFile))
  invisible()
}
