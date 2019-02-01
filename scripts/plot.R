#### Libraries
library(foreign)
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
