# Transform variables by rescaling. 
# Calculate the matrix total.
matrix.total <- sum(crs$dataset[, c("Sepal.Length")], na.rm=TRUE)
# Rescale Sepal.Length.
crs$dataset[["RMA_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Divide variable values by matrix total.
if (building)
{
  crs$dataset[["RMA_Sepal.Length"]] <-  crs$dataset[["Sepal.Length"]]/matrix.total
}
# When scoring transform using the training data parameters.
if (scoring)
{
  crs$dataset[["RMA_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]/876.500000
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "R10_Sepal.Length")
crs$weights <- NULL
