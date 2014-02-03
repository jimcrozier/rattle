#complete
# Hierarchical Cluster 
# Generate a hierarchical cluster of the data.
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="complete", nbproc=1)
#ward
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="ward", nbproc=1)
#single
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="single", nbproc=1)
#average
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="average", nbproc=1)
#mcquitty
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="mcquitty", nbproc=1)
#median
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="median", nbproc=1)
#centroid
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="centroid", nbproc=1)
