# CLEANUP the Dataset 
# Remove specific variables from the dataset.
crs$dataset$Sepal.Length <- NULL
# Rattle timestamp: 2014-02-03 10:09:35 i386-w64-mingw32 
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- NULL
crs$weights <- NULL
