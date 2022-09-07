library(tidyverse)
View(cars)
head(cars, 10)
cars%>%
  ggplot(aes(x=speed, y= dist))+
  geom_point(col="red")+
  theme_bw()+
  labs(x = "Speed(miles/hour)", 
       y= "distance covered before stopping(miles)", 
       title= "Distance vs Speed Plot")
cars%>%
  lm(dist~speed, data= .)%>%
  summary()
#focus on y-interrcept, slope, p-value and R2

mod <- lm(dist~speed, data= cars)
mod
summary(mod)
attributes(mod)
mod$residuals
hist(mod$residuals)

new_speeds <- data.frame(speed = c(10, 15, 20))
predict(mod, new_speeds)%>% round(1)
#at 10miles/hr distance taken to stop is 21.7 miles