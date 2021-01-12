STM
=====

R function to calculate Productivity (PCI) and Resilience (RCI) Capacity Index according to Thiry's Screening Method (TSM)

Usage
-----
```{r eval=F}
Thiry(id,ys,yp,data)
ThiryScore(x,inv=FALSE)
```
Arguments
-----
http://github.com - automatic!
[GitHub](http://github.com)
*nt:
*ys: Name column of yield data of drought stress condition 
*yp: Name column of yield data of potential condition
*data:
*x:
*inv:

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
