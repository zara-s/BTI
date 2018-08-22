setwd("~/Documents/GitHub/BTI")

library(tidyverse)
library(lubridate)

df1 <- read_csv("cropexample2.csv")

df2 <- df1 %>% 
        gather("Date", "Value",c(-Crop,-Type))


#######


df3 <- df2 %>% 
        separate(Date, c("Month", "Year")) %>%
        mutate(Year2=paste("20", Year, sep="")) %>%
        mutate(Day=1)%>%
        mutate(Date=paste (Year, Month, Day, sep="-")) %>%
        select(-Month, -Year, -Day, -Year2) %>% 
        mutate(Date = ymd(Date))


ggplot(df3, aes(Date, Value, group=Type, color=Type)) +
      geom_line() +
      facet_wrap(~Crop)


