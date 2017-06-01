#clase  24 de febrero del 2017
str(file)

con<-url("http://www.fcfm.buap.mx/")
x<-readLines(con,7)
x

x<-c("a","b","c","c","d","e","a")
x
x[1]
x[4]
x[1:3]
x[3:5]
x[6:2]
x[1],[3],[5]
x[c(1,3,5)]
x[x>"b"]

#demanera equivalente se puede 
u<-x==c("c","d")
u
x[u]



u<-x=="c" | x=="d"
u
x[u]

x<-list(foo=95:30,bar=0.6)
a<-x[1]
b<-x[[1]]
c<-x$foo

x["bar"]
x[["bar"]]
u<-"bar"
x[u]
x[[u]]
x$u


#Clase 3 de febrero de 2017
airquality
complete.cases(airquality)
sum(complete.cases(airquality))
sum(!complete.cases(airquality))
x<-airquality[complete.cases(airquality),]
x
nrow(x)
dim(x)
dim(x)[1]
x<-1:4
y<-6:9
z<-2:3
x+y
x*y
x>2
x>=2
x/y
x+z
x/z
x<-matrix(1:4,2,2)
y<-matrix(rep(10,4),2,2)
x
y
x*y
x %*% y
y %*% x

#Estructuras de control 
if(TRUE){
  #instruccion
  #instruccion 
  #instruccion 
}else{
  #algunas otras instrucciones 
  
}
  x<- 4
if(x>3){
  y<-10
}else{
  y<-0
}
y
y<-if(x>3){
  10
}else{
  0
}
y
  
for(i in 1:10){
print (i)  
}

x <- c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for(letra in x){
  print(letra)
}

for(i in 1:4) print(x[i])


x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count<-0
while(count<10){print(count)
  count<-count+1
}
for(i in 0:9){
  print(i)
}
 i<-0
 while(TRUE && i<=100000){
   print(i)
   i<-i+1
 }
#CLASE 14/03/17  
 z<-5
 while(z>=3 && z<=10){
   print(z)
   moneda <- rbinom(1,1,0.5)
   if(moneda==1){
     z<-z+1
   }else 
     z<-z-1
 }
 contador<-contador + 11
 {
   len<-c(len,length(vector))
 }
hist(len)
plot(vector, type ="l")
?plot


z<-5
contador<-1
vector<-c()
while((z>=3 && z<=10)&& contador<100){
  vector<-c(vector,z)
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+0.1
  }else{
    z<-z-0.1
  }
  contador<-contador+1
}
plot(vector,type="l")

y=x^2+5
x<- (-300:300)/100
y<-x^2+5
plot(y,type = "l")

y<-c()
for(i in 1:100){
  y<-c(y,i^2+5)
}
plot(y,type = "l")

for(i in 1:50){
  if(i<=25){
    next
    
  }
  if(i>40){
    break
  }
  print(i)
}
#PROGRAMAR FUNCIONES 
suma2<-function(x,y){
  x+y
}
dump("suma2",file="suma2.R")
source("suma2.R")

#PROMEDIOS
PromedioCol<-function(x,quitarNA=T){
  cols<-ncol(x)
  v<-c()
  for(i in 1:Cols){
    
  v<-c(v,mean(x[,i],na,rm=quitarNA))
  }
  v
}
#CLASE 17/03/2017 (Evaluazion perezosa)
f<-function(a,b){
  a^2
}
f(2)

f<-function(a,b){
  print(a)
  print(b)
}
f(3)
#ARGUMENTO 3 puntos 
myplot<-function(x,y.type="l",...){
  plot(x,y,type=type,...)
}
   
y=x^2+5
x<-(-300:300)/100
y<-x^2+5
plot(x,y)

miplot<-function(x,y,ana="l",...){
  plot(x,y,type=ana,...)
}
miplot(x,y,main="Parabola",sub="y=x^2+5",
       xlab="Horizontal", ylab="Vertical",
       col="black")
search()
library(grDevices)
search()
library(ggplot2)
search()

f<- function(x,y){
  x^2+y/z
}

hacer.potencia<-function(n){
  potencia<-function(x){
    x^n
  }
  potencia 
}

cubica<-hacer.potencia(3)
cubica(3)
cuadrada<-hacer.potencia(2)
cuadrada(3)

ls(environment(cubica))
get("n",environment(cubica))

ls(environment(cuadrada))
get("n",environment(cuadrada))

#CLASE 21 /03/20107
y<- 10
f<- function(x){
  y<-2
  y^2+g(x)
}
g<-function(x){
  x*y
}
f(3)
#esto es un  comentario
        #   
123456789

for(i in 1:100){
for(j in 1:100){
if(TRUE ){
n<-50
while(T||n<-100){
print(n*i*j0)
}
}
}
}

x<-as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

x<- as.Date("1997-09-07")
unclass(x)
y<- as.Date("2017-03-21")
unclass(y)
unclass(y-x)


date()
ct<- as.POSIXct.date(Sys.time)
lt<-as.POSIXlt.date(Sys.time())
weekdays(x)

#Funciones de ciclo 
lapply
?lapply

x<-list(a=1:5,b=rnorm(10000))
lapply(x,mean)

x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)

x<-1:4
lapply(x,runif)

x<-1:4
lapply(x,runif,max=15,min=5)

#23/marzo/2017
#Funcion sapply 
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
sapply(x,mean)
x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)
x<-matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))
a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims = 2)

install.packages("swirl")
library(swirl)
swirl()

install_from_swirl("R_Programming")


#clase31/03/2017
install.packages("datasets")
library(datasets)

tapply(airquality$Temp,airquality$Month,mean,simplify =T)
sapply(split(airquality$Temp,airquality$Month),mean )
split(airquality$Temp,airquality$Month)

s<-split(airquality,airquality$Month)
lapply(s,function(x)colMeans(x[,1:3])) 
lapply(s,function(x)colMeans(x[,1:3],na.rm =TRUE))
sapply(s,function(x)colMeans(x[,1:3],na.rm=TRUE))
airquality

x<-rnorm(10)
f1<-gl(2,5)
f2<-gl(5,2)
f1
f2
interaction(f1,f2)
x
str(split(x,list(f1,f2)))
?str
#Manejo de errores en R 
log(-1)
imprimeMSJ<-function(x){
    if(x>0)
        print("x es mayor que 0")
    else
        print("x es menoro igual a 0")
    invisible(x)
}

imprimeMSJ<-function(x){
    if(is.na(x))
        print("x es un valor faltante")
    else if (x>0)
        print("x es mayor que 0")
    else
        print("xes menor o igual a 0")
    invisible(x)
}
?options
options(error=recover)
read.csv("noexiste")













































































































































