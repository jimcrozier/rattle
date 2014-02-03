# Remap variables. 
# Turn two factors into one factor.
  crs$dataset[, "TJN_Species_BE4_Sepal.Length"] <- interaction(paste(crs$dataset[["Species"]], "_",crs$dataset[["BE4_Sepal.Length"]], sep=""))
  crs$dataset[["TJN_Species_BE4_Sepal.Length"]][grepl("^NA_|_NA$", crs$dataset[["TJN_Species_BE4_Sepal.Length"]])] <- NA
  crs$dataset[["TJN_Species_BE4_Sepal.Length"]] <- as.factor(as.character(crs$dataset[["TJN_Species_BE4_Sepal.Length"]]))
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "TIN_Species_versicolor",
     "TIN_Species_virginica", "TJN_Species_BE4_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "TIN_Species_versicolor",
     "TIN_Species_virginica")
crs$categoric <- "TJN_Species_BE4_Sepal.Length"
crs$target  <- NULL
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "Species", "BE4_Sepal.Length", "TIN_Species_setosa")
crs$weights <- NULL
