#### Libraries
library(ggplot2)

# load data
ca <- read.csv("data/ca2006.csv") 

# examine structure of the data
str(ca)

# first observations
head(ca)

# summary statistics of variables
summary(ca)

# Plot the proportion of votes for the Democratic candidate, against the 
# proportion of the two-party vote for the Democratic presidential candidate 
# in 2004 (John Kerry) in the district. 
plot1 <- ggplot(ca, aes(x=dem_pres_2004, y = prop_d)) + geom_point(size = 2) + theme_bw() +
  labs(x= "% votes for Kerry, 2004", 
       y = "% votes Dem candidate, 2006", 
       title = "Democratic vote share by county 2004, 2006")
plot1

# Regress the proportion of votes for the Democratic candidate, against the 
# proportion of the two-party vote for the Democratic presidential candidate 
# in 2004 in the district. Print the results and add the bivariate regression 
# to the plot.

bivariate <- lm(prop_d~dem_pres_2004, data = ca) 
summary(bivariate)

# adding the regression line to plot
plot2 <- plot1 + geom_smooth(method = "lm", se = TRUE)
plot2 
