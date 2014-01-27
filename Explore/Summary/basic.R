 require(fBasics, quietly=TRUE)
# Generate a description of the numeric data.
lapply(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)][,c(1:4)], basicStats)
