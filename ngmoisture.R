# soil mositure Namib rings

library(ggplot2)
library(cowplot)

moisture <- read.csv("~/Desktop/soilmoisture.csv", header =TRUE)

#View(biomass)

p1<-ggplot(data=moisture, aes(x=location, y=mositure, fill=location))+
  geom_boxplot()+
  scale_fill_manual(values=c("#CC3300", "#339933","#3399FF"))+
  theme(legend.position="none")+
  labs(x="", y="Soil moisture (%)")+
ylim(0, 1.25)+
# xlim(0, 1.25)+
  
  
  theme_bw()+
  theme(axis.text.x=element_text(size=15),
        axis.title.x=element_text(size=15),
        axis.text.y=element_text(size=15),
        axis.title.y=element_text(size=15),
        #panel.background = element_rect(fill = 'white'),
        #plot.margin = unit(c(0.6,0.5,0.5,0.5), "cm"),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill= NA, size= 1),
        legend.position="")


plot_grid(p1)
