+++
title = "Mode Function In R"
draft = false
meta = "false"
date = "2018-07-25"
+++

This page is on creating a mode function in R. There is no built in function for the mode in R so you have to create one yourself.

&nbsp;

```r
# Computing mode in R:

# Found online
# Link: https://stackoverflow.com/questions/2547402/is-there-a-built-in-function-for-finding-the-mode

names(sort(-table(x))[1])
```

&nbsp;

```r
## Function:

getMode <- function(x) {
  names(sort(table(x), decreasing = TRUE)[1])
}
```

&nbsp;

Here are some test cases for finding the mode with the function we made. The medians are:

* 3
* pasta
* 1

&nbsp;

```{r}

## -----------------
# Test Cases :

x <- c(1, 3, 3, 5, 9, 11, 2, 4)

foods <- c("pizza", "salad", "pasta", "pasta", "sushi", "KFC", "pasta")

samplePoissons <- rpois(100, lambda = 1)

getMode(x); getMode(foods); getMode(samplePoissons)
```
