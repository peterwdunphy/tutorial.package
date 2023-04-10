#'  @Description
#' A function that has no inputs that will download the dataset stored in the Dropbox link
#'  The function will download, unzip, and load the dataset into the R session, while removing the downloaded file from disk.
#'
#' @returns Data stored in the Dropbox link in the environment. Currently, the link contains the data used in the paper Robert Lalonde, "Evaluating the Econometric Evaluations of Training Programs," American Economic Review, Vol. 76, pp. 604-620.
#'
#'
#' @examples
#' data <- GetDataAsset()
#' @export

GetDataAsset <- function() {
  # Download the zipped file
  tmp <- tempfile()
  download.file("https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip?dl=1", destfile = tmp)

  # Unzip the file
  con <- unz(tmp, "lalonde nsw.csv")

  # Load the data into R and assign to "lalonde" variable
  lalonde <- read.csv(con)

  # Remove the temporary directory and zip file
  unlink(con)
  unlink(tmp)

  # Assign the data to the Global Environment
  return(lalonde)
}


# Call function and assign result to PackageDataAsset
PackageDataAsset <- GetDataAsset()

# Save object to .rda file in data folder
save(PackageDataAsset, file = "data/PackageDataAsset1.Rda", version=3)

## Save
data(PackageDataAsset)



