# Transform variables by rescaling. 
# Rescale Sepal.Length.
crs$dataset[["R10_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Take a log10 transform of the variable - treat -Inf as NA.
if (building)
{
  crs$dataset[["R10_Sepal.Length"]] <-  log10(crs$dataset[["Sepal.Length"]]) 
  crs$dataset[crs$dataset[["R10_Sepal.Length"]] == -Inf & ! is.na(crs$dataset[["R10_Sepal.Length"]]), "R10_Sepal.Length"] <- NA
}
# When scoring transform using the training data parameters.
if (scoring)
{
  crs$dataset[["R10_Sepal.Length"]] <-  log10(crs$dataset[["Sepal.Length"]]) 
  crs$dataset[crs$dataset[["R10_Sepal.Length"]] == -Inf & ! is.na(crs$dataset[["R10_Sepal.Length"]]), "R10_Sepal.Length"] <- NA
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "R10_Sepal.Length")
crs$weights <- NULL
