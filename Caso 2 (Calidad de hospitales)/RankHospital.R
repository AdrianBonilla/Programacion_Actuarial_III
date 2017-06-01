rankhospital <- function(estado="TX",resultado="infarto",num="mejor"){
    if(resultado !="neumonía" & resultado!="falla" & resultado !="ataque"){
        stop("resultado invalido")
    }
    
    
    assign("data",read.csv("outcome-of-care-measures.csv"))
    #Revision de la validez de estado y resultado
    assign("estados",levels(data[,7])[data[,7]])
    #Columnas de los codigos de estado 
    assign("Codigoes",FALSE)
    for(i in 1:length(estados)){
        if(estado==estados[i]){
            assign("Codigoes",TRUE)
        }
    }
    if (!Codigoes){
        stop("estadoinvalido")
    }
    
    #Dividimos la base de datos 
    assign("dato" ,read.csv("outcome-of-care-measures.csv", colClasses = "character")) 
    options(warn = -1)#Ignora las advertencias
    if(resultado == "infarto"){
        assign("x",split(dato[c(2,7,11)],dato[c(2,7,11)]$State))
    }else if(resultado=="falla"){  
        assign("x",split(dato[c(2,7,17)],dato[c(2,7,17)]$State))
    }else if(resultado=="neumonía"){
        assign("x",split(dato[c(2,7,23)],dato[c(2,7,23)]$State))
    }else{
        print(NA)
    }
    #Extrae la columna de los hospitales del estado y taza de mortalidad en un valor numerico
    assign("Hospital",x[estado][[estado]][,1]); assign("Rate",as.numeric(x[estado][[estado]][,3]))
    #Hace un data frame con los hospitales y la taza de mortalidad y excluye los vacios
    assign("u",na.omit(data.frame(Hospital,Rate)))
    #Ordenamos de alfabeticamente 
    assign ("ordenador",with(u,order(Rate,Hospital)))
    assign("z"  ,u[ordenador,]);assign("t",nrow(u))
    #guardamos en un data frame y sacamos el ranking 
    assign("basededatos",data.frame(z,rank=1:t))
    #Validacion numerica 
    if(num=="mejor"){
        head(basededatos,1)
    }else if(num=="peor"){
        tail(head(basededatos,t),1)
    }else if (0<num & num<=t){
        tail(head(basededatos,num),1)
    }else if(t<num){
        print("Error")
        
    }
}

rankhospital(estado="LA",resultado="oso",num="25")
