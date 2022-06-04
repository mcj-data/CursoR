fb=read.csv("FBCSV.csv")
plot(FBCSV, main='FB',  xlab='Apertura', ylab='Cierrre')
plot(FBCSV$Edad, FBCSV$Minutos, main='Paridad Dolar', pch=21, bg="blue", cex=2, xlab='Edad', ylab='Minutos')
summary(fb)
plot(fb$Edad, fb$Likes, main='Paridad Dolar', pch=21, bg="blue", cex=2, xlab='Edad', ylab='Likes')
#grafica los datos

ggplot(data=FBCSV) + 
  aes(x=Edad, y=Minutos, color=Name, size=Likes) +
  geom_point() +
  geom_smooth(method=lm)
