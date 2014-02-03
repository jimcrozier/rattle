# Remove specific variables from the dataset.
crs$dataset$Sepal.Width <- NULL
# Rattle timestamp: 2014-02-03 10:12:12 i386-w64-mingw32 
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Petal.Length", "Petal.Width")
crs$numeric <- c("Petal.Length", "Petal.Width")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- NULL
crs$weights <- NULL
