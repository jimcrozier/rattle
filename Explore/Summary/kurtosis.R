# The 'kurtosis' package provides the 'fBasics' function.
require(fBasics, quietly=TRUE)
# Summarise the kurtosis of the numeric data.
kurtosis(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)][,c(1:4)], na.rm=TRUE)
