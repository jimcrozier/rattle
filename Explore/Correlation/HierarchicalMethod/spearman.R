# Hierarchical Variable Correlation 
# Generate the correlations (numerics only).

cc <- cor(crs$dataset[crs$sample, crs$numeric], use="pairwise", method="spearman")
# Generate hierarchical cluster of variables.
hc <- hclust(dist(cc), method="average")
# Generate the dendrogram.
dn <- as.dendrogram(hc)
# Now draw the dendrogram.
op <- par(mar = c(3, 4, 3, 4))
plot(dn, horiz = TRUE, nodePar = list(col = 3:2, cex = c(2.0, 0.75), pch = 21:22, bg=  c("light blue", "pink"), lab.cex = 0.75, lab.col = "tomato"), edgePar = list(col = "gray", lwd = 2), xlab="Height")
title(main="Variable Correlation Clusters
 iris using Spearman",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
par(op)
