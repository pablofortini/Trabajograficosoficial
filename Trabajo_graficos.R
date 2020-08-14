

## Librerias




summary(fullDatos)
library(ggplot2)
library(gdata)


## Including Plots



plot(fullDatos)

##Ejercicio1

ggplot(fullDatos, aes(x= categoria))+
  geom_bar(fill="red4")+
  scale_x_discrete(name = "CategoriasProducto")+
  scale_y_continuous(name = "Frecuencia", breaks = seq(0,50,2), limits = c(0,50))+
   ggtitle(label = "Cantidades de tipos de anuncios en la Región Metropolitana")+ 
   geom_text(stat = 'count', hjust = 0, vjust = 0, position = position_dodge(0.9), aes(x = categoria, label=stat(count)))+
   coord_flip()
#Cantidad de anuncios publicados por comuna 




# 


Arriendos  <- fullDatos %>% filter(categoria == "Arriendo - Departamento" | categoria == "Arriendo - Pieza" )
View(Arriendos)
ggplot(Arriendos, aes(x=comuna))+
  scale_x_discrete(name = "Comunas")+
  scale_y_continuous(name = "Frecuencia", breaks = seq(0,20,2), limits = c(0,20))+
   ggtitle(label = "Arriendos por comuna")+ 
   geom_text(stat = 'count', hjust =0, vjust = 0, position = position_dodge(5), aes(x = comuna, label=stat(count)))+
     coord_flip()+
 geom_bar(aes(fill=comuna))
#Cantidad de arriendos publicados por comuna






##analisis ejercio 1

#Ejercicio2

#Respuesta: El grafico n°1 demuestra que la categorias que mas se publican,
#en una muestra de 400 obs., son las que tienen relacion con : autos, camionetas y 4x4,
#arriendos y muebles. Por otro lado, el grafico 
#n°2 grafica las cantidades de arriendos publicados por comuna, 
#donde manifiesta que la comuna que mas registra publicaciones en la region metropolitana
#es Santiago. Se puede plantar la hipotesis que se tiene una alta demanda en los
#arriendos de Santiago debido a que Chile posee una distribución económica centrista,
#donde todos los servicios basicos y empresas que brindan bienes de consumo se 
#encuentran en la misma zona, por lo que un arriendo en el centro de la region 
#garantiza buena conexion a la gran mayoría de demandas.

##Ejercicio3


  if(length(nodoBread)>0){
    precio <- html_text(nodoBread)
    precio <- gsub("\\t","",precio)
    precio <- gsub("\\n","",precio)
    precio <- gsub("\\$","",precio)
    precio <- gsub("[.]","",precio)
    precio <- as.numeric(precio)
  }else{
    precio = NA
  }
  return(precio)
}

#El "NA" en el precio sucede debido a que existe un condición en el Dataframe, donde el codigo "gsub" buscar un valor en cualquier variable, en este caso si se encuentra una "t","n","$","." se definirá como precio, por otro lado, si un valor numerico no contiene estas variables se definira con "NA"


#Ejercicio4

setwd("C:/Users/Aldo Fortini/Desktop/Trabajo graficos")
write.table(Arriendos,file="Arriendos_ok.csv" , sep= ";", row.names=F)


