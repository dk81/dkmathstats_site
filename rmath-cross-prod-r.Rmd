+++
title = "Vector Cross Products In R"
meta = "false"
mathjax = true
draft = false
date = "2018-07-29"
+++

Hi there. This page is about being able to compute vector cross products in the statistical programming language R. The very helpful link was from http://stackoverflow.com/questions/36798301/r-compute-cross-product-of-vectors-physics. The last comment of the link mentions using the `pracma` package for computing vector cross product.

To install the pracma package in R, you can type in `install.packages("pracma")`.

After installing the pracma package in R you need to load the pracma package in order to use the cross product function in the package. You can load pracma into R using

&nbsp;

```{r}
require("pracma")
```

&nbsp;

or by using

&nbsp;

```{r}
library(pracma)
```

&nbsp;

---

**Example**

Suppose we have the vectors \\(\textbf{u} = (2, 0, -8)\\) and \\(\textbf{v} = (0, 0, 1)\\). The vector which is perpendicular/orthogonal (90 degrees) to both vectors \\(\textbf{u}\\) and \\(\textbf{v}\\) is the cross product vector. The cross product vector can be determined using the `pracma` package in R.

&nbsp;

```{r}
# Example:

# Finding the cross product of the two vectors
# u = (2, 0, -8) and v = (0, 0, 1)

u <- c(2, 0, -8)
v <- c(0, 0, 1)

crossProd1 <- cross(u, v)
crossProd1
[1] 0 -2 0
```

&nbsp;


We can check (algebraically) that the cross product vector of \\((0, -2, 0)\\) is orthogonal to vectors \\(\textbf{u}\\) and \\(\textbf{v}\\).


&nbsp;

```{r}
# Checking that the cross product is perpendicular/orthogonal to
# vectors u and v.
# If dot product is zero, two vectors are orthogonal (90 degrees) to each other.

sum(u * crossProd1)
[1] 0

sum(v * crossProd1)
[1] 0
```

&nbsp;

The cross product vector \\((0, -2, 0)\\) is valid as both dot products are both zero.
