# Initializing lib loading data
library(ggplot2)
library(dplyr)
library(data.table)
setwd("~/School_16-17/Info-201/bin/intro_to_r/")
load("ggplot/suicides.rdata")

all_suicides <- copy(suicides)

suicides <- suicides %>% group_by(year, state, means) %>% mutate(deaths = sum(deaths))
bare <-ggplot(suicides)
aesthetic <- ggplot(suicides, aes(x=year, y=deaths))
scatter <- ggplot(suicides, aes(x=year, y=deaths, color = means)) + geom_point()
state_facet <- ggplot(suicides, aes(x=year, y=deaths, color = means)) + geom_point() + facet_wrap(~state, scales = 'free')