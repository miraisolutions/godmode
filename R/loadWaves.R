loadWaves <- function(waveFiles) {
  if (any(tools::file_ext(waveFiles) != "wav"))
    return(invisible())

  wFiles <- system.file("extdata", waveFiles, package = "godmode")
  if (wFiles[1] == "")
    wFiles <- system.file("inst/extdata", waveFiles, package = "godmode")

  if (any(!file.exists(wFiles)))
    return(invisible())

  smpl <- double(0)
  for (wFile in wFiles) {
    tmp <- audio::load.wave(wFile)
    smpl <- c(smpl, tmp)
  }
  smpl <- audio::audioSample(smpl)
  attributes(smpl) <- attributes(tmp)
  smpl
}
