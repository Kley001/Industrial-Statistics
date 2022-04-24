----------------------
#Required Libraries

library(aplpack)
library(qcc)

-------------------------------------------------------------------------------------------
#Cause and Effect

cause.and.effect(cause=list(Personal=c("Personal desconoce \n las calles", "" ,"Mal manejo \n de productos"),  
                            Materiales=c("Productos da?ados\n recibidos del \n proveedor", "Material de \n empaque \n inadecuado"),
                            Medici?n=c("Fallar en \n estimar el \n tiempo de entrega"),
                            Ambiente=c("Muchos pedidos \n nocturnos", "Congesti?n en \n horas pico"),
                            M?todos=c("Productos diferentes \n con nombres \n id?nticos", "Recetas no \n detalladas"),
                            Maquinaria=c("Se tiene un \n solo veh?culos", "Fallas en la \n m?quina de \n etiquetado")),
                 effect="Domicilio incorrecto, \n da?ado, retrasado.",cex=c(0.9,0.55,0.8))

-------------------------------------------------------------------------------------------
#Histogram
  
line1<-c(-0.06,0.32,-0.14,-0.06,0.74,-0.44,0.27,0.49,-0.26,0.22,-0.06,0.18,-0.21,-0.54,0.04,0.32,-0.08,-0.03,0.45,-0.12,0.09,0.20,0.28,-0.04,-0.52,-0.30,0.25,-0.05,0.18,0.31,0.11,-0.12,0.03,0.28,-0.05,0.63,0.20,-0.15,-0.04,-0.25)
line2<-c(0.25,0.48,0.69,0.73,0.46,0.48,0.39,0.51,0.82,0.87,0.28,0.52,0.46,0.29,0.49,0.60,0.27,0.60,0.16,0.47,0.38,0.19,0.84,0.44,0.12,0.46,0.41,0.29,0.51,0.28,0.62,0.38,0.44,0.56,0.69,0.63,0.42,0.22,0.35,0.32)
line3<-c(-0.57,-0.23,-0.18,-0.33,-0.35,-0.54,-0.60,-0.57,-0.62,-0.75,-0.34,-0.36,-0.38,-0.25,-0.60,-0.45,-0.58,-0.64,-0.41,-0.77,-0.57,-0.51,-0.73,-0.22,-0.47,-0.73,-0.62,-0.64,-0.69,-0.69,-0.40,-0.62,-0.68,-0.61,-0.29,-0.09,-0.58,-0.62,-0.45,-0.42,)
nf=layout(rbind(c(1,1,2,2),c(0,3,3,0)))

hist(line1,breaks=7,xlim=c(-1.125,1.05),ylim=c(0,20),main="Histogram - line 1", ylab="Frequency",xlab="Target value deviation")
abline(v =0,col=2)
hist(linea2,breaks=7,xlim=c(-1.125,1.05),ylim=c(0,20),main="Histogram - line 2", ylab="Frequency",xlab="Target value deviation")
abline(v =0,col=2)
hist(linea3,breaks=7,xlim=c(-1.125,1.05),ylim=c(0,20),main="Histogram - line 3", ylab="Frequency",xlab="Target value deviation")
abline(v =0,col=2)

-------------------------------------------------------------------------------------------
#Control Chart

data(pistonrings)
attach(pistonrings)
diameter <- qcc.groups(diameter, sample)
q<-qcc(diameter[1:25,], type="xbar",title="",xlab="Sample",ylab="Mean")
names(q)
q$statistics
q$limits
-------------------------------------------------------------------------------------------
