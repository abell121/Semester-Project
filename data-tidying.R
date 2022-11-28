#test code
library(openxlsx)
library(reshape)
library(dplyr)
library(stringr)
library(readr)

#df=read.xlsx("Maternal Health Local Data.xlsx", "MSA",
             #startRow = 3,
             #rowNames = FALSE,
             #colNames = FALSE,
             #rows = c(5:8),
             #cols=c(1:30),
             #fillMergedCells=TRUE,
            # check.names = TRUE);
#import data set 
library(readxl)
Maternal_Health_Local_Data <- read_excel("Maternal Health Local Data.xlsx", 
                                         sheet = "MSA")
library(readr)
Maternal_Health_Local_Data_tidy_ <- read_csv("Maternal Health Local Data(tidy).csv")
View(Maternal_Health_Local_Data_tidy_)
