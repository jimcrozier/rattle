# BiCluster 
# The 'biclust' package provides the 'biclust' function.
require(biclust, quietly=TRUE)
# Reset the random number seed to obtain the same results each time.
set.seed(crv$seed)
# Generate BiCluster using method 'BCCC'.
crs$biclust <- biclust(as.matrix(na.omit(crs$dataset[crs$sample, crs$numeric])),method=BCCC)
# Generate a textual view of the BiCluster model.
print(crs$biclust)


