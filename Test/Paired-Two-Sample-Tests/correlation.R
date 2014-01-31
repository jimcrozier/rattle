# Use the fBasics package for statistical tests.
require(fBasics, quietly=TRUE)
# Perform the test.
correlationTest(na.omit(crs$dataset[, "Sepal.Length"]), na.omit(crs$dataset[, "Petal.Length"]))
