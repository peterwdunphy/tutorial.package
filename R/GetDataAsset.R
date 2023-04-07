GetDataAsset <- function() {
  # Download the zipped file
  download.file("https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip?dl=1", destfile = "lalonde_nsw.zip")

  # Unzip the file
  unzip("lalonde_nsw.zip")

  # Load the data into R
  data <- read.csv("lalonde nsw.csv")

  # Return the data
  return(data)
}

# Load the data and create the PackageDataAsset object
data <- GetDataAsset()
PackageDataAsset <- data
