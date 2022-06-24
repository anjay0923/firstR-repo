x <- 1:100
y <- cumsum(x)

plot(y)

plot(age)

attach(PCA_Louis)

plot(age)

lm(formula = age ~ day1stb)

plot(age, day1stb)

plot(age, duration)

mean(ptid)

sum(1:77)
3003/77

edit(PCA_Louis)

library(tidyverse)

mutate(bleed_group = day1stb < 4)  

PCA_Louis_New <- PCA_Louis %>% 
  select(ptid, age, day1stb, numbleed, duration, status) %>% 
  attach(PCA_Louis)
attach(PCA_Louis)
library(pacman)
library(tidyverse)
install.packages("tidyverse")
library(tidyverse)
plot(PCA_Louis$age)
plot(PCA_Louis)

#Start of notes on learning R

head(PCA_Louis) #gives a 6x6 table of the first few values of the dataset
plot(PCA_Louis$ptid, PCA_Louis$day1stb, main = "PTID vs Day of First Bleed", xlab = "PTID", ylab = "Day of First Bleed")
barplot(PCA_Louis$status) #this doesn't work because it is the raw data

livingstatus = table(PCA_Louis$status) #must first create a table
barplot(livingstatus) #then the bar chart works
plot(livingstatus)

plot(age)
hist(age) #histogram for age
hist(duration)

par(mfrow = c(3,1)) #puts 3 graphs on one screen in the plots screen

#HISTOGRAMS

hist(day1stb [status == 0], #histogram for day first bled but selected for status with []
     xlim = c(0,9), #this is the scale from 0-9
     breaks = 20,
     main = "Day 1st Bled for Those That are Dead",
     xlab = "",
     col = "red")

hist(day1stb [status == 1],
     xlim = c(0,9),
     breaks = 20,
     main = "Day 1st Bled for Those That are Alive",
     xlab = "",
     col = "blue")
par(mfrow = c(1,1)) #be sure to set it back to the default number of graphs on one screen

hist(day1stb)

hist(duration [age == 22],
     breaks = 2)
PCA_Louis %>% ggplot(aes(x = age)) + geom_histogram(bins = 8, color = "black", fill = "gray90")#simple ggplot histogram
hist(age)

hist(day1stb,
     breaks = 8,
     freq = FALSE, #this makes it to show density not frequency
     col = "red",
     ylim = c(0, 0.25), #
     main = paste("Frequency of Day First Bled"),
     xlab = "Day First Bled")

#ADDING/OVERLAYING NORMAL DISTRIBUTION

curve(dnorm(x, mean = mean(day1stb), sd = sd(day1stb)), 
      col = "blue", 
      lwd = 2, #line width of 2 pixels
      add = TRUE) #superimpose on previous graph

#ADDING A RUG PLOT
rug(day1stb, lwd = 2, col = "black")

#SCATTERPLOTS
plot(age, duration, 
     col = "red",
     pch = 19, #solid circles
     cex = 0.5, #changes size of the circles
     main = "Age vs Duration", #title
     xlab = "Age", #
     ylab = "Duration")

plot(age ~ duration)
?plot

#SUMMARY OF DATA

summary(age)
summary(status)

install.packages("gapminder")

library(dplyr)
library(ggplot2)
PCA_Louis %>% 
  filter(day1stb < 5) %>% 
  ggplot(aes(x = day1stb, y = duration, col = age)) + geom_point(alpha = 0.5)

#Worksheet from ACD

#First we need to clean up PCA_Louis

library(tidyverse)
View(PCA_Louis)

mean(PCA_Louis$age, na.rm = TRUE)
?mean()

?pivot_wider

rm(PCA_Louis_New)

PCA_Louis_New

str(PCA_Louis)

?t.test
