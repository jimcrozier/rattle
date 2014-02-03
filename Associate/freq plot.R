# Relative Frequencies Plot 
# Association rules are implemented in the 'arules' package.
require(arules, quietly=TRUE)
# Generate a transactions dataset.
crs$transactions <- as(crs$dataset[crs$sample,c(5:6)], "transactions")
# Plot the relative frequencies.
itemFrequencyPlot(crs$transactions, support=0.1, cex=0.8)
