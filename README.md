# GMM o ASE
Department of Applied Mathematics and Statistics <br /> Johns Hopkins University  
`r date()`  



# Codes and Demos

This is an `R` package that does

1. generate or read a graph,
2. do a _pass-to-rank_ for a weighted graph (`PTR`, no-op for an unweighted graph),
3. do a graph spectral embedding (`ASE`, with a _diagonal augmentation_),
4. do a dimension reduction (`ZG`) and merge left and right vectors (no-op for an undirected graph),
5. run `mclust` (`GMM`).

## `R` Package

The latest `R` source package can be installed via `github` as


```r
require(devtools)
devtools::install_github("youngser/gmmase")
```

## Demos

Example codes are in the `demo` folder at [github](https://github.com/youngser/gmmase), which can be run via


```r
library(gmmase)

# a toy graph with 100 vertices
demo(toygraph)

# a larger graph with 10,000 vertices: may take a few minutes, depending on the system
demo(usergraph)
```

The outputs of the demos are here:

* [toygraph](http://www.cis.jhu.edu/~parky/gmmase/demo/toygraph.html)
* [usergraph](http://www.cis.jhu.edu/~parky/gmmase/demo/usergraph.html)

## User data

To use a user graph, please try this (as shown in the code in `demo/usergraph.R`).


```r
fname <- readline(prompt="Enter a file name (e.g., /path/edgelist.txt): ")
g <- read_graph(fname, format="edgelist") # please read igraph manual page for details, e.g., other graph formats it can handle, etc.
res <- gmmase(g)
Y <- res$class # cluster labels
```

# Software and Hardware Information


```r
library(help='gmmase')
sessionInfo()
```

```
## R version 3.3.3 (2017-03-06)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: macOS Sierra 10.12.4
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] backports_1.0.5 magrittr_1.5    rprojroot_1.2   tools_3.3.3    
##  [5] htmltools_0.3.6 yaml_2.1.14     Rcpp_0.12.11    stringi_1.1.5  
##  [9] rmarkdown_1.6   knitr_1.16      stringr_1.2.0   digest_0.6.12  
## [13] evaluate_0.10
```

-----
*prepared by <youngser@jhu.edu> on Mon Aug  7 20:24:22 2017*

