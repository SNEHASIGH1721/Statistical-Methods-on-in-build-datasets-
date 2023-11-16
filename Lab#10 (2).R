#coded by Sneha Singh
# final lab session
install.packages("gapminder")
library(gapminder)
library(dplyr)
library(ggplot2)
data(gapminder)
summary(gapminder)
mean(gapminder$lifeExp)
median(gapminder$pop)
hist(gapminder$lifeExp)
hist(gapminder$pop)# Name the kind of distribution for this histogram
#The kind of distribution is: 
attach(gapminder)
hist(log(pop))# why do we use log tranformation
# We use log tranformation for 
boxplot(lifeExp~continent)
plot(lifeExp~log(gdpPercap))
## Create a new dataframe and filter out variables (country, lifeExp from that filter countries "Canada", "Brazil")
list(gapminder$country)
df1<-gapminder%>%
  select(country,lifeExp)%>%
  filter(country=="Canada"|
           country=="Brazil")
t.test(data=df1, lifeExp~country)
gapminder %>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=log(gdpPercap), y=lifeExp, col=year, size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method=lm)+
  facet_wrap(~continent)


     