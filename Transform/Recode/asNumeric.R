# Remap variables. 
# Transform into a numeric.
  crs$dataset[["TNM_Species"]] <- as.numeric(crs$dataset[["Species"]])
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Petal.Length", "Petal.Width", "TIN_Species_versicolor", "TIN_Species_virginica",
     "TJN_Species_BE4_Sepal.Length", "TFC_BE4_Sepal.Length", "TFC_Sepal.Length", "TFC_Sepal.Width",
     "TNM_Species")
crs$numeric <- c("Petal.Length", "Petal.Width", "TIN_Species_versicolor", "TIN_Species_virginica",
     "TNM_Species")
crs$categoric <- c("TJN_Species_BE4_Sepal.Length", "TFC_BE4_Sepal.Length", "TFC_Sepal.Length", "TFC_Sepal.Width")
crs$target  <- NULL
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "Sepal.Width", "Species", "BE4_Sepal.Length", "TIN_Species_setosa")
crs$weights <- NULL
