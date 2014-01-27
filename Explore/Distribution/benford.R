# Benford's Law 
# The 'gplots' package provides the 'barplot2' function.
require(gplots, quietly=TRUE)
# Generate the expected distribution for Benford's Law.
expect <- unlist(lapply(1:9, function(x) log10(1 + 1/x)))
#============================================================
# Rattle timestamp: 2014-01-27 12:05:24 i386-w64-mingw32 
# Generate the data for the plot of the variable 'Sepal.Length'.
ds <- rbind(data.frame(dat=crs$dataset[crs$sample,][,"Sepal.Length"], grp="All"),          data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="setosa","Sepal.Length"], grp="setosa"),          data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="versicolor","Sepal.Length"], grp="versicolor"),        data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="virginica","Sepal.Length"], grp="virginica"))
# Generate legend entries with subset sizes.
sizes <- (function(x)(paste(names(x), " (",  x, ")", sep="")))(by(ds, ds$grp, nrow))
# Generate the frequency of the initial digits.
ds <- t(as.matrix(data.frame(expect=expect,
     All=calcInitialDigitDistr(ds[ds$grp=="All", 1] , split="none", digit=1 ),
     "setosa"=calcInitialDigitDistr(ds[ds$grp=="setosa", 1], split="none", digit=1),
     "versicolor"=calcInitialDigitDistr(ds[ds$grp=="versicolor", 1], split="none", digit=1),
     "virginica"=calcInitialDigitDistr(ds[ds$grp=="virginica", 1], split="none", digit=1))))

# Ensure rows with no digits are treated as zeros.
ds[is.nan(ds)] <- 0
# Display the plot.
plot(1:9, ds[1,], type="b", pch=19, col="black", ylim=c(0,max(ds)), axes=FALSE, xlab="Distribution of the First Digit", ylab="Probability")
axis(1, at=1:9)
axis(2)
points(1:9, ds[2,], col=rainbow_hcl(4)[1], pch=19, type="b")
points(1:9, ds[3,], col=rainbow_hcl(4)[2], pch=19, type="b")
points(1:9, ds[4,], col=rainbow_hcl(4)[3], pch=19, type="b")
points(1:9, ds[5,], col=rainbow_hcl(4)[4], pch=19, type="b")
# Add a legend to the plot.
legend("topright", c("Benford's", sizes), inset=.05, bty="n", fill=c("black", rainbow_hcl(4)))
# Add a title to the plot.
title(main="Benford's Law: Sepal.Length (sample)
by Species",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))

