AnalysisFunction <- function(x, training) {
  if (training) {
    # Add random white noise to x
    noise <- runif(length(x), min = -1, max = 1)
    x <- x + noise
  }

  # Return the result
  return(x)
}
