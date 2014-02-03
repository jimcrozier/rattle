# Remap variables. 
# Bin the variable(s) into 4 bins using kmeans.
if (building)
{
   set.seed(23456)
  crs$dataset[["BK4_Sepal.Length"]] <- binning(crs$dataset[["Sepal.Length"]], 4, method="kmeans", ordered=FALSE)
}
# When scoring, use the training data parameters to bin new data.
if (scoring)
{
  crs$dataset[["BK4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
    c(4.3,5.3,6.1,6.9,7.9),
    include.lowest=TRUE)
# Alternatively, use the min/max from the new data.
#  crs$dataset[["BK4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
#    c(min(crs$dataset[["Sepal.Length"]], na.rm=TRUE),5.3,6.1,6.9, max(crs$dataset[["Sepal.Length"]], na.rm=TRUE)),
#    include.lowest=TRUE)
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "BQ4_Sepal.Length",
     "BK4_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width")
crs$categoric <- c("BQ4_Sepal.Length", "BK4_Sepal.Length")
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
