# CLEANUP the Dataset 
# Remove rows with missing values.
crs$dataset <- crs$dataset[complete.cases(crs$dataset),]
# Rattle timestamp: 2014-02-03 10:42:41 i386-w64-mingw32 
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("V1", "V2", "V3")
crs$numeric <- c("V1", "V2", "V3")
crs$categoric <- NULL
crs$target  <- NULL
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- NULL
crs$weights <- NULL
