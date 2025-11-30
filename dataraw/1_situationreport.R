## set library
library(tidyverse)
library(here)
library(readxl)
library(lubridate)


situation_report_30NOV1600 <- read_excel("dataraw/situationreport/situation_report.xlsx")
View(situation_report_30NOV1600)

usethis::use_data(situation_report_30NOV1600)
