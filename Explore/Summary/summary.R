# The 'Hmisc' package provides the 'contents' function.
require(Hmisc, quietly=TRUE)
# Obtain a summary of the dataset.
contents(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)])
summary(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)])
