library(googlesheets)
library(tidyverse)
library(lubridate)
library(ggrepel)

theme_set(theme_bw())

rm(list = ls())

set.seed(1234)

gs_ls()

data <- gs_title("Unlandmarks")


#need to choose the Master List sheet
df_aquarium_metrics <- aquarium_metrics %>% 
  gs_read(ws = 1)

df_aquarium_metrics_recommended <- aquarium_metrics %>% 
  gs_read(ws = 2)