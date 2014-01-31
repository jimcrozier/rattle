# Use the fBasics package for statistical tests.
require(fBasics, quietly=TRUE)
# Perform the test.
locationTest(na.omit(crs$dataset[, "Sepal.Length"]), na.omit(crs$dataset[, "Petal.Length"]))
