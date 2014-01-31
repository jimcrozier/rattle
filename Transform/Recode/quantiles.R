# Remap variables. 
# Bin the variable(s) into 4 bins using quantiles.
if (building)
{
   crs$dataset[["BQ4_Sepal.Length"]] <- binning(crs$dataset[["Sepal.Length"]], 4, method="quantile", ordered=FALSE)
}
# When scoring, use the training data parameters to bin new data.
if (scoring)
{
  crs$dataset[["BQ4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
    c(4.3,5.1,5.8,6.4,7.9),
    include.lowest=TRUE)
# Alternatively, use the min/max from the new data.
#  crs$dataset[["BQ4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
#    c(min(crs$dataset[["Sepal.Length"]], na.rm=TRUE),5.1,5.8,6.4, max(crs$dataset[["Sepal.Length"]], na.rm=TRUE)),
#    include.lowest=TRUE)
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "ICN_Sepal.Length",
     "IMN_Sepal.Length", "BQ4_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "ICN_Sepal.Length",
     "IMN_Sepal.Length")
crs$categoric <- "BQ4_Sepal.Length"
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
