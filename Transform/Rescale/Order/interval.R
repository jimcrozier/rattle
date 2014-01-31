# Transform variables by rescaling. 
# The 'reshape' package provides the 'rescaler' function.
require(reshape, quietly=TRUE)
# Rescale Sepal.Length.
crs$dataset[["RIN_Sepal.Length_100"]] <- crs$dataset[["Sepal.Length"]]
# Rescale to 0-99 within each group.
if (building)
{
  crs$dataset[["RIN_Sepal.Length_100"]] <-
    rescale.by.group(crs$dataset[["Sepal.Length"]], type="irank", itop=100)
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length", "RRK_Sepal.Length", "RIN_Sepal.Length_100")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length", "RRK_Sepal.Length", "RIN_Sepal.Length_100")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "R10_Sepal.Length")
crs$weights <- NULL
