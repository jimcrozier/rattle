# Transform variables by imputing missing values. 
# Impute Sepal.Length.
crs$dataset[["IMO_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Change all NAs to the modal value (not advisable).
if (building)
{
  crs$dataset[["IMO_Sepal.Length"]][is.na(crs$dataset[["Sepal.Length"]])] <- modalvalue(crs$dataset[["Sepal.Length"]], na.rm=TRUE)
}
# When scoring, transform using the training data parameters:
if (scoring)
{
  crs$dataset[["IMO_Sepal.Length"]][is.na(crs$dataset[["Sepal.Length"]])] <- 5
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "IZR_Sepal.Length",
     "IMN_Sepal.Length", "IMD_Sepal.Length", "IMO_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "IZR_Sepal.Length",
     "IMN_Sepal.Length", "IMD_Sepal.Length", "IMO_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
