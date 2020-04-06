library(gdata) #for reading .xls
library(writexl) #for saving .xlsx


all_xls <- list.files("data/daily", pattern = ".xls$", full.names = TRUE)

#file paths with .xlsx
all_xls_out<- gsub(".xls$",".xlsx", all_xls)

for(i in 148:length(all_xls)){
  
  print(i)
  
  possibleError <- tryCatch(
    #read in the .xls
    a <- read.xls(all_xls[i], verbose = FALSE),
    error=function(e) e)
  
  if(inherits(possibleError, "error")) next
  
    
    #save as .xlsx
    write_xlsx(a, all_xls_out[i])

}


# 50, 69, 82, 103, 112, 122, 131, 141, 146, 147 is weird

#list all .xlsx files

all_xlsx <- substr(list.files("data/daily", pattern = ".xlsx", full.names = TRUE), 1, 50)


setdiff(all_xls, all_xlsx)
