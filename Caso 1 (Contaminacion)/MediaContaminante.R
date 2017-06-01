###Parte 1

mediacontaminante <- function(directorio="~/GitHub/Programaci-n_Actuarial_III/specdata", contaminante, id = 1:332){
  assign("setwd",directorio) 
   if((contaminante =="nitrate")||(contaminante =="sulfate")){
    assign("datos",c()) 
    for(i in id){
        if(i<10){
            assign("dato",read.csv(paste("00",i,".csv",sep="")))
        }else if (i>=10 && i<100){
            
            assign("dato",read.csv(paste("0",i,".csv",sep="")))
        }else{
            assign("dato",read.csv(paste(i,".csv",sep="")))
        }
        
    
        assign(datos,c(datos,dato[,contaminante]))
        assign(medias,mean(datos, na.rm=TRUE))
    }
    
   }else{ medias="no reconoce el contaminante"
}
 medias
}

#"Sulfate" = 2 y "Nitrate" = 3
mediacontaminante(,"niokl",22:12)
