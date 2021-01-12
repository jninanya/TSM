STM
=====

R function to calculate Productivity (PCI) and Resilience (RCI) Capacity Index according to [Thiry's](https://doi.org/10.1093/jxb/erw330) Screening Method (TSM)

Usage
-----
```{r eval=F}
Thiry(id,ys,yp,data)
ThiryScore(x,inv=FALSE)
```
Arguments
-----
- **id:** Row name of the data frame __*data*__
- **ys:** Column name of yield data of drought stress condition 
- **yp:** Column name of yield data of potential condition
- **data:** A data frame
- **x:** A drought stress index calculated in the function __*"Thiry"*__
- **inv:** A logical value. If __*inv=TRUE*__, the drought stress index (__*x*__) is inverted. Default __*inv=FALSE*__

Values
-----
To load the package type:

Example
-----
```{r eval=F}
n=20
data=data.frame("id"=1:n,"ys"=runif(n)*5,"yp"=runif(n)*10)
ts=Thiry("id","ys","yp",data)
```
