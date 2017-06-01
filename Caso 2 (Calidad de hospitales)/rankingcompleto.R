rankingcompleto <- function(resultado="infarto",num="mejor"){
    assign("dato" ,read.csv("outcome-of-care-measures.csv", colClasses = "character")) 
    #options(warn = -1)#Ignora las advertencias
    if(resultado == "infarto"){
        assign("x",split(dato[c(2,7,11)],dato[c(2,7,11)]$State))
    }else if(resultado=="falla"){  
        assign("x",split(dato[c(2,7,17)],dato[c(2,7,17)]$State))
    }else if(resultado=="neumonía"){
        assign("x",split(dato[c(2,7,23)],dato[c(2,7,23)]$State))
    }
    assign("Hospital",c())
    for(j in 1:54){
        assign("H",x[j][[1]][,1]); assign("Rate",as.numeric(x[j][[1]][,3]))
        assign("u", na.omit(data.frame(H,Rate)))
        assign("e", with(u,order(Rate,H)))
        assign("u",u[e,][1]); assign("t",nrow(u))
        if(num=="mejor"){
           assign ("Hospital",c(Hospital,as.character(u[1,1])))
        }else if(num=="peor"){
           assign("Hospital",c(Hospital,as.character(u[t,1])))
        }else if(0<num & num<=t ){
           assign("Hospital",c(Hospital,as.character(u[num,1])))
        }else if (t<num){
           assign("Hospital",c(Hospital,as.character(u[t+1,1])))
        } 
    }
    assign("Estado",sort(unique(dato$State)))
    data.frame(Hospital,Estado)
}

head(rankingcompleto("infarto",20),10)
tail(rankingcompleto("neumonía","peor"),3)
tail(rankingcompleto("falla","mejor"),10)
