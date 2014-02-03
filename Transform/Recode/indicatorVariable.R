# Remap variables. 
# Turn a factor into indicator variables.
  crs$dataset[, make.names(paste("TIN_Species_", levels(crs$dataset[["Species"]]), sep=""))] <- diag(nlevels(crs$dataset[["Species"]]))[crs$dataset[["Species"]],]
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "BE4_Sepal.Length",
     "TIN_Species_versicolor", "TIN_Species_virginica")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "TIN_Species_versicolor",
     "TIN_Species_virginica")
crs$categoric <- "BE4_Sepal.Length"
crs$target  <- NULL
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "Species", "TIN_Species_setosa")
crs$weights <- NULL
