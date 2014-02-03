# Entropy Weighted KMeans 
# The 'weightedKmeans' package provides the 'ewkm' function.
require(weightedKmeans, quietly=TRUE)
# Reset the random number seed to obtain the same results each time.
set.seed(crv$seed)
# Generate a ewkm cluster of size 10.
crs$kmeans <- ewkm(na.omit(crs$dataset[crs$sample, crs$numeric]), 10)
# Report on the cluster characteristics. 
# Cluster sizes:
paste(crs$kmeans$size, collapse=' ')
# Data means:
colMeans(na.omit(crs$dataset[crs$sample, crs$numeric]))
# Cluster centers:
crs$kmeans$centers
# Cluster weights:
round(crs$kmeans$weights, 2)
# Within cluster sum of squares:
crs$kmeans$withinss
