# Transform variables by rescaling. 
# Rescale Sepal.Length.
crs$dataset[["RRC_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Recenter and rescale the data around 0.
if (building)
{
  crs$dataset[["RRC_Sepal.Length"]] <-
    scale(crs$dataset[["Sepal.Length"]])[,1]
}
# When scoring transform using the training data parameters.
if (scoring)
{
  crs$dataset[["RRC_Sepal.Length"]] <- (crs$dataset[["Sepal.Length"]] - 5.843333)/0.828066
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length")

crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
