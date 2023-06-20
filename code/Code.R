# Library ----
library(readxl)
library(writexl)
library(tidyverse)
library(ggforce)
library(ggh4x)
library(latex2exp)
library(matrixStats)
library(RColorBrewer)

raw_data <- read_xlsx("raw_data/results_080523.xlsx") %>% 
  #filter(!(corrected %in% TRUE)) %>% 
  select(sample_ID, parameter, test, kategori, conc, unit) %>% 
  pivot_wider(names_from = c(sample_ID),
              values_from = conc)

write_xlsx(raw_data, "pivot_table.xlsx")
