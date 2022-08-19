
library(glue)
for (qual in c("good", "bad"))
{
  d <- readRDS(glue("./rds-data/rawMS2-{qual}.Rds"))

  for (item in d)
  {
    name = item$Name
    ce = item$CollisionEnergy
    io = item$IonizationMode
    precursor = item$precursorMz
    LOC = glue("./rds-data/rawMS2/{qual}/")
    write.csv(item["MS2"],paste(paste(LOC, name, ce, io, precursor, sep="_"), ".csv", sep=""), row.names = FALSE)
    
  }
}

