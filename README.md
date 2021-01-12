STM
=====

R function to calculate Productivity (PCI) and Resilience (RCI) Capacity Index according to [Thiry's](https://doi.org/10.1093/jxb/erw330) Screening Method (TSM).

Usage
-----
```{r eval=F}
Thiry(id,ys,yp,data)
ThiryScore(x,inv=FALSE)
```
Arguments
-----
- **id:** Row name of the data frame __*data*__.
- **ys:** Column name of yield data of drought stress condition. 
- **yp:** Column name of yield data of potential condition.
- **data:** A data frame.
- **x:** A drought stress index calculated in the function __*"Thiry"*__.
- **inv:** A logical value. If __inv=TRUE__, the drought stress index (__*x*__) is inverted. Default __inv=FALSE__.

Values
-----
- **$indexes:**  A data frame of drought stress indexes (SSI, TOL, MP, GMP, STI).
- **$scores:**   5     data.frame list   
- **$corr1.:**  25     -none-     numeric
- **$range:**    5     -none-     list   
- **$comb1.:**  18     data.frame list   
- **$corr2.:**   2     data.frame list   
- **$comb2.:**   2     data.frame list  

Example
-----
```{r eval=F}
n=20
data=data.frame("id"=1:n,"ys"=runif(n)*5,"yp"=runif(n)*10)
ts=Thiry("id","ys","yp",data)
```
