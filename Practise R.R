setwd("~/Documents/GitHub/BTI")

library(tidyverse)
library(lubridate)

(df1 <- read_csv("cropexample2.csv")) 

(df2 <- df1 %>% 
        gather("Date", "Value",c(-Crop,-Type)))



