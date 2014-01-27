# The 'skewness' package provides the 'fBasics' function.
require(fBasics, quietly=TRUE)
# Summarise the skewness of the numeric data.
skewness(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)][,c(1:4)], na.rm=TRUE)
