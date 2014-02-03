# Remap variables. 
# Bin the variable(s) into 4 bins using equal widths.
if (building)
{
   crs$dataset[["BE4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]], 4)
}
# When scoring, use the training data parameters to bin new data.
if (scoring)
{
  crs$dataset[["BE4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
    c(4.3,5.2,6.1,7,7.9),
    include.lowest=TRUE)
# Alternatively, use the min/max from the new data.
#  crs$dataset[["BE4_Sepal.Length"]] <- cut(crs$dataset[["Sepal.Length"]],
#    c(min(crs$dataset[["Sepal.Length"]], na.rm=TRUE),5.2,6.1,7, max(crs$dataset[["Sepal.Length"]], na.rm=TRUE)),
#    include.lowest=TRUE)
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "BE4_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width")
crs$categoric <- "BE4_Sepal.Length"
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- "Sepal.Length"
crs$weights <- NULL
