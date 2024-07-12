library(dplyr)
library(ggplot2)

file <- readRDS("./data/gapminder_unfiltered.rds")
View(file)

canada <- file %>% filter(country == "Canada")
ggplot(aes(x = year, y = lifeExp), data = canada) + geom_point()
