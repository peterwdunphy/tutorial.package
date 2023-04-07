## Importing Dataset

# download the zip file
url <- "https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip?dl=1"
temp <- tempfile()
download.file(url, temp)

# unzip the file and load the csv
PackageDataAsset <- read.csv(unz(temp, "lalonde nsw.csv"))
unlink(temp)  # delete the temporary zip file
usethis::use_data(PackageDataAsset)


# This script in the R directory will contain the documentation.
# You can use any name you want.
file.create("R/PackageDataAsset.R")

# Initialize git repository (optional)
#usethis::use_git()
