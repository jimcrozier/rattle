# Remap variables. 
# Transform into a factor.
  crs$dataset[["TFC_Sepal.Length"]] <- as.factor(crs$dataset[["Sepal.Length"]])
  ol <- levels(crs$dataset[["TFC_Sepal.Length"]])
  lol <- length(ol)
  nl <- c(sprintf("[%s,%s]", ol[1], ol[1]), sprintf("(%s,%s]", ol[-lol], ol[-1]))
  levels(crs$dataset[["TFC_Sepal.Length"]]) <- nl
# Note the user selections. 
# The following variable selections have been noted.
crs$input <- c("Petal.Length", "Petal.Width", "TIN_Species_versicolor", "TIN_Species_virginica",
     "TJN_Species_BE4_Sepal.Length", "TFC_BE4_Sepal.Length", "TFC_Sepal.Length", "TFC_Sepal.Width")
crs$numeric <- c("Petal.Length", "Petal.Width", "TIN_Species_versicolor", "TIN_Species_virginica")
crs$categoric <- c("TJN_Species_BE4_Sepal.Length", "TFC_BE4_Sepal.Length", "TFC_Sepal.Length", "TFC_Sepal.Width")
crs$target  <- NULL
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- c("Sepal.Length", "Sepal.Width", "Species", "BE4_Sepal.Length", "TIN_Species_setosa")
crs$weights <- NULL
