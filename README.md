
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tutorial.package

<!-- badges: start -->
<!-- badges: end -->

tutorial.package is a developmental package made for the Problem Set 3
of the UTexas Making Big Data course. This package has two major
commands, AnalysisFunction and GetDataAsset, along with a pre-loaded
dataset, PackageDataAsset.

## Installation

You can install the development version of tutorial.package like so:

``` r
library(devtools)
#> Loading required package: usethis
devtools::install_github("peterwdunphy/tutorial.package")
#> Skipping install of 'tutorial.package' from a github remote, the SHA1 (a0e193b7) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## AnalysisFunction

Function takes a a numeric array x and randomly adds white noise drawn
i.i.d from unif(-1,1) to x when training = T. When training = F, the
function simply returns x.

``` r
library(tutorial.package)
# Create a numeric array of length 10
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Add random white noise to x during training
x_train <- AnalysisFunction(x, training = TRUE)

#  Check the result
print(x_train)
#>  [1] 0.5303663 1.2585436 3.3792133 3.0949504 4.3865334 6.8657355 6.3034043
#>  [8] 8.8689929 8.9395816 9.5968863
# Output: [1] 0.2671259 2.1374656 2.1014392 4.7121023 4.1662397 6.2558626 7.7542864 8.8569784 8.8682297 9.4225326

# Return the original x during inference
x_test <- AnalysisFunction(x, training = FALSE)

# Check the result
print(x_test)
#>  [1]  1  2  3  4  5  6  7  8  9 10
# Output: [1] 1 2 3 4 5 6 7 8 9 10
```

## GetDataAsset

A function that has no inputs that will download the dataset stored in
the Dropbox link. The function will download, unzip, and load the
dataset into the R session, while removing the downloaded file from
disk. Currently, the link contains the data used in the paper Robert
Lalonde, “Evaluating the Econometric Evaluations of Training Programs,”
American Economic Review, Vol. 76, pp. 604-620. The data is also
available by calling data(PackageDataAsset).

``` r
data <- GetDataAsset()
# equivalently, data(PackageDataAsset)
```

## License

Creative Commons Attribution-Noncommercial-No Derivative Works 4.0, for
academic use only.
