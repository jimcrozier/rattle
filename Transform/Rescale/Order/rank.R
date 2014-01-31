# Transform variables by rescaling. 
# The 'reshape' package provides the 'rescaler' function.
require(reshape, quietly=TRUE)
# Rescale Sepal.Length.
crs$dataset[["RRK_Sepal.Length"]] <- crs$dataset[["Sepal.Length"]]
# Convert values to ranks.
if (building)
{
  crs$dataset[["RRK_Sepal.Length"]] <-  rescaler(crs$dataset[["Sepal.Length"]], "rank")
}
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length", "RRK_Sepal.Length")
crs$numeric <- c("Sepal.Width", "Petal.Length", "Petal.Width", "RRC_Sepal.Length",
     "R01_Sepal.Length", "RMD_Sepal.Length", "RLG_Sepal.Length", "R10_R10_Sepal.Length",
     "RMA_Sepal.Length", "RRK_Sepal.Length")
crs$categoric <- NULL
crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "R10_Sepal.Length")
crs$weights <- NULL
