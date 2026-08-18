
## Packages:
library(DBI)
library(RSQLite)
library(tidyverse)
library(stringr)
library(lubridate)
library(readr)

setwd("~/Desktop/job-interview/")
getwd()

## Data:
con <- dbConnect(SQLite(), "data/observations.db")
df <- dbReadTable(con, "raw_observations")
dbDisconnect(con)

## Check:
glimpse(df)
names(df)

df$id
table(df$obs_date)
table(df$obs_date)

## Store:
write.csv(df, file = "output/edited_observations.csv", row.names = FALSE)

## End of script.
