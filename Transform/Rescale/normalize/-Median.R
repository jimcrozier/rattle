# Transform variables by rescaling. 
# The 'reshape' package provides the 'rescaler' function.
require(reshape, quietly=TRUE)
# Rescale Sepal.Length.
crs$dataset[["RMD_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Rescale by subtracting median and dividing by median abs deviation.
if (building)
{
  crs$dataset[["RMD_Sepal.Length"]] <-  rescaler(crs$dataset[["Sepal.Length"]], "robust")
}
# When scoring transform using the training data parameters.
if (scoring)
{
  crs$dataset[["RMD_Sepal.Length"]] <- (crs$dataset[["Sepal.Length"]] - 5.800000)/1.037820
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
