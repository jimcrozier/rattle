# Transform variables by rescaling. 
# The 'reshape' package provides the 'rescaler' function.
require(reshape, quietly=TRUE)
# Rescale Sepal.Length.
crs$dataset[["R01_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Rescale to [0,1].
if (building)
{
  crs$dataset[["R01_Sepal.Length"]] <-  rescaler(crs$dataset[["Sepal.Length"]], "range")
}
# When scoring transform using the training data parameters.
if (scoring)
{
  crs$dataset[["R01_Sepal.Length"]] <- (crs$dataset[["Sepal.Length"]] - 4.300000)/abs(7.900000 - 4.300000)
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
