# Generate just the data for an Ecdf plot of the variable 'Sepal.Length'.
ds <- rbind(data.frame(dat=crs$dataset[crs$sample,][,"Sepal.Length"], grp="All"),    data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="setosa","Sepal.Length"], grp="setosa"),        data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="versicolor","Sepal.Length"], grp="versicolor"),          data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="virginica","Sepal.Length"], grp="virginica"))
# The 'Hmisc' package provides the 'Ecdf' function.
require(Hmisc, quietly=TRUE)
# Plot the data.
Ecdf(ds[ds$grp=="All",1], col="#E495A5", xlab="Sepal.Length", lwd=2, ylab=expression(Proportion <= x), subtitles=FALSE)
Ecdf(ds[ds$grp=="setosa",1], col="#ABB065", lty=2, xlab="", lwd=2, subtitles=FALSE, add=TRUE)
Ecdf(ds[ds$grp=="versicolor",1], col="#39BEB1", lty=3, xlab="", lwd=2, subtitles=FALSE, add=TRUE)
Ecdf(ds[ds$grp=="virginica",1], col="#ACA4E2", lty=4, xlab="", lwd=2, subtitles=FALSE, add=TRUE)
# Add a legend to the plot.
legend("bottomright", c("All","setosa","versicolor","virginica"), bty="n",  col=rainbow_hcl(4) , lwd=2, lty=1:4, inset=c(0.05,0.05))
# Add a title to the plot.
title(main="Distribution of Sepal.Length (sample)
by Species",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
