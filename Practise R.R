setwd("~/Documents/University of Technology /Spring 2018/Technology Lab 2 Connect & Network (94676)")

library(tidyverse)
library(lubridate)

(df1 <- read_csv("cropexample2.csv")) 

(df2 <- df1 %>% 
        gather("Date", "Value",c(-Crop,-Type)))



