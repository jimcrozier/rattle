#euclidean
# Generate a hierarchical cluster of the data.
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="euclidean", link="ward", nbproc=1)
#maximum
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="maximum", link="ward", nbproc=1)
#manhattan
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="manhattan", link="ward", nbproc=1)
#canberra
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="canberra", link="ward", nbproc=1)
#binary
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="binary", link="ward", nbproc=1)
#pearson
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="pearson", link="ward", nbproc=1)
#correlation
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="correlation", link="ward", nbproc=1)
#spearman
crs$hclust <- hclusterpar(na.omit(crs$dataset[crs$sample, crs$numeric]), 
    method="spearman", link="ward", nbproc=1)

