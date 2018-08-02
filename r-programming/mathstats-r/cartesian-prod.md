+++
title = "Cartesian Products In R"
meta = "false"
mathjax = true
draft = false
date = "2018-07-29"
+++

Here is a short guide to producing Cartesian Products in R. Cartesian products is a concept from the mathematical field of set theory. To create Cartesian products at least two sets are required. Those from a computer science background would be more familiar with arrays (vectors) more than sets.

A related post to this would be one of my old pages: An Introduction To Set Theory &#038; Logic (Part Three Of Three)

Table Of Contents

Cartesian Products
An Example Of A Cartesian Product
Examples of Cartesian Products in R
Reference

Cartesian Products

The Cartesian product of sets $A$ and $B$ is denoted by $A \times B$ or "A cross B". It is the set of all ordered pairs (a, b) such that $a \in A$ and $b \in B$ or $A \times B = \{(a, b) : a \in A, b\in B\}$. You can also think of the Cartesian products as all possible combinations between two sets.

If we have $A \times A$ then that can be written as $A^{2}$.

If either set $A$ or set $B$ (or both of them) is empty ($\varnothing$) then the Cartesian product would be empty as well. ($A \times B = \varnothing$)

In the Cartesian product, we can determine the number of elements in this set. Denote $|A|$ as the number of elements in the set A and denote $|B|$ as the number of elements in the set B. If sets $A$ and $B$ are sets with a finite number of elements then $|A \times B| = |A| \cdot |B|$.


An Example Of A Cartesian Product 

Here is an example of how the Cartesian product operates.

Suppose we have the set $P = \{1, 2\}$ and the set $Q = \{a, b, c\}$. What is the Cartesian product $P \times Q$? What about $Q \times P$ and $P \times P$?

Answer

$$P \times Q = \{ (1, a), (1, b), (1, c), (2, a), (2, b), (2, c)\}$$

$$Q \times P = \{ (a, 1), (a, 2), (b, 1), (b, 2), (c, 1), (c, 2) \}$$

$$P \times P = \{ (1, 1), (1, 2), (2, 1), (2, 2)\}$$

The Cartesian products here are all possible combinations between the two sets.

From the sets P and Q we can find the number of elements in the Cartesian products. The sets $P \times Q$, $Q \times P$ contain $2 \times 3 = 6$ elements each and $P \times P$ has $2 \times 2 = 4$ elements.


Examples of Cartesian Products in R

In the statistical program R, there is a built in function which can produce Cartesian products from at least two sets/vectors. This expand.grid() function is the R version of Cartesian products.

The first example in R is the example from the previous section. Note that the output in R has a different order from the answers above.





This second example is somewhat more practical in the sense that the Cartesian product helps in finding all possible combinations between the fruits set and the animals set.







If you want to change the column titles from Var1 and Var2, you can use the following line of code in R:

colnames( <table_name> ) <- c("col1_title", "col2_title")

Reference

Source: http://stackoverflow.com/questions/4309217/cartesian-product-data-frame-in-r
