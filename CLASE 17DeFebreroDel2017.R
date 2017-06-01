#Clase del 17/02/2017
x1<-c(0.5,0.6)
x2<-c(TRUE, FALSE)
x3<-c(T,F)
X4<-c("a","b","c")
x5<- 9:29
x6<-c(2+1i,3-5i,3.14+1.86i)

y<- c(1.7,"a")
y<-c(TRUE,2)
Y<-c("a",TRUE)
f<- 0:6
class(f)
g<-c(0.6,0.5)
s<-c("a","b","c")
e<-c(3.14,4.5,7.3,9.9)
#LISTAS 
t<-list(1,"a",TRUE,1+4i,1:100)
t
#MATRICES 
m<-matrix(nrow =2,ncol = 3)
m
m<-matrix(1:6,nrow = 2,ncol = 3,byrow = TRUE)
m
n<-matrix(1:6,2,3,byrow = T)
n
j<-1:10
j
dim(j)<-c(2,5)
j
dim(j)<-c(5,2)
j
x<-1:3
y<-10:12
#FACTORES
x<-factor(c("yes","yes","no","yes","no"))
x
x<-factor(c("yes","yes","no","yes","no"),levels = c("yes","no"))
x

X<-c(1,2,NA,10,3,NaN)
is.na(X)
is.nan(X)
x<-data.frame(foo=1:4,bar=c(T,T,F,T))
x
nrow(x)
ncol(x)
x<-1:3
names(x)
names(x)<-c("foo","bar","biz")
x
g<-list(a=1,b=2,c=3)
g
h<-list(a=1,b=2,c=3)

m<-matrix(1:4,2,2)
m
names(m)
dimnames(m)<-list(c("a","b"),c("c","d"))
m
?read.csv

y<-data.frame(a=1,b="a")
dput(y)
dput(y,"y.R")
dget("y.R")
y<-dget("y.R")






x<-"programacion actuarial III"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")

source("data.R")
