# Association Rules 
# The 'arules' package provides the 'arules' function.
require(arules, quietly=TRUE)
# Generate a transactions dataset.
crs$transactions <- as(crs$dataset[crs$sample, crs$categoric], "transactions")
# Generate the association rules.
crs$apriori <- apriori(crs$transactions, parameter = list(support=0.100, confidence=0.100, minlen=1))
# Summarise the resulting rule set.
generateAprioriSummary(crs$apriori)
# Time taken: 0.01 secs
