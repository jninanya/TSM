STM
=====

R function to calculate Productivity (PCI) and Resilience (RCI) Capacity Index according to Thiry's Screening Method (TSM)

Usage
-----
```{r eval=F}
library(st4gi)
```
Arguments
-----
To load the package type:

Example
-----
```{r eval=F}
n=20
data=("id"=1:n,"ys"=runif(n)*5,"ys"=runif(n)*10)
ts=Thiry("id","ys","yp",data)
```
