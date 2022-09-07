library(tidyverse)
head(cars, 10)
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