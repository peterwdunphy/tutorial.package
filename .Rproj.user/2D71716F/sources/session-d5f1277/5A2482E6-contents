#' Function takes a a numeric array x and randomly adds white noise drawn i.i.d from unif(-1,1) to x when training = T. When training=F, the function simply returns x.
#'
#' @param x A numeric array.
#' @param training logical. If TRUE, function adds white noise to the numeric array. When training = F, the function simply returns x.
#' @returns A numeric array with or without white noise.
#'
#' @examples
#'
#' Create a numeric array of length 10
#' x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
#'
#' # Add random white noise to x during training
#' x_train <- AnalysisFunction(x, training = TRUE)
#'
#' # Check the result
#' print(x_train)
#' # Output: [1] 0.2671259 2.1374656 2.1014392 4.7121023 4.1662397 6.2558626 7.7542864 8.8569784 8.8682297 9.4225326
#'
#' # Return the original x during inference
#' x_test <- AnalysisFunction(x, training = FALSE)
#'
#' # Check the result
#' print(x_test)
#' # Output: [1] 1 2 3 4 5 6 7 8 9 10
#' @export

AnalysisFunction <- function(x, training) {
  if (training) {
    # Add random white noise to x
    noise <- runif(length(x), min = -1, max = 1)
    x <- x + noise
  }

  # Return the result
  return(x)
}
