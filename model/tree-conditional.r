# Conditional inference tree. 
# Build a conditional tree using the party package.
require(party, quietly=TRUE)
# Build a ctree model.
crs$rpart <- ctree(Species ~ ., data=crs$dataset[crs$sample,c(crs$input, crs$target)])
# Generate summary of the ctree model.
print(crs$rpart)
# Time taken: 0.04 secs
