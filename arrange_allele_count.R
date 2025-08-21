library(tidyverse)

args <- commandArgs(trailingOnly = TRUE)

in_dir <- args[[1]]

setwd(in_dir)

gnomad_files <- list.files(path = ".",pattern = "allele_count.txt",full.names = TRUE)

gnomad_dat <- lapply(gnomad_files,function(x){
  res <- jsonlite::fromJSON(x)
  if("errors"%in%names(res)){
    NULL
  }else{
    Vid <- res$data$variant$variantId
    AC_dat <- res$data$variant$joint$populations %>% filter(id!="",(!id%in%c("XX","XY"))) %>% as_tibble()
    
    bind_cols(ID=Vid,AC_dat) 
  }
  
})

combined_dat <- gnomad_dat %>% bind_rows()

write_csv(combined_dat,"combined_allele_count.csv")

