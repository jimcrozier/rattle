# The 'md.pattern' package provides the 'mice' function.
require(mice, quietly=TRUE)
# Generate a summary of the missing values in the dataset.
md.pattern(crs$dataset[,c(crs$input, crs$target)])
