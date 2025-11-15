## Sample Code for Labelling
## Bastián González-Bustamante
## R version 4.5.0 (2025-04-11 ucrt) -- "How About a Twenty-Six"
## November 2025

## Clean Environment
rm(list = ls())

## TextDetox training data
textdetox <- read.csv("../TextClass-Benchmark/data/textdetox/ES/X_train.csv", header = T, sep = ",")
textdetox$id <- seq_len(nrow(textdetox))

## Loop for separate TXT files
for (i in 1:nrow(textdetox)) {
  id <- textdetox[i, "id"]
  text <- textdetox[i, "text"]
  
  ## Create Files based on ID
  file_name <- paste0("data/raw/textdetox/id_", id, ".txt")
  
  ## TXT with UTF-8
  writeLines(text, file_name, useBytes = TRUE)
}
