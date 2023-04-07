
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tutorial.package

<!-- badges: start -->
<!-- badges: end -->

The goal of tutorial.package is to …

## Installation

You can install the development version of tutorial.package like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tutorial.package)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

# Create a numeric array of length 10

x \<- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Add random white noise to x during training

x_train \<- AnalysisFunction(x, training = TRUE)

# Check the result

print(x_train) \# Output: \[1\] 0.2671259 2.1374656 2.1014392 4.7121023
4.1662397 6.2558626 7.7542864 8.8569784 8.8682297 9.4225326

# Return the original x during inference

x_test \<- AnalysisFunction(x, training = FALSE)

# Check the result

print(x_test) \# Output: \[1\] 1 2 3 4 5 6 7 8 9 10

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
