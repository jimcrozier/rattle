# Plot a Histogram 
# Generate just the data for a histogram of the variable 'Petal.Width'.
ds <- rbind(data.frame(dat=crs$dataset[crs$sample,][,"Petal.Width"], grp="All"),   data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="setosa","Petal.Width"], grp="setosa"),           data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="versicolor","Petal.Width"], grp="versicolor"),            data.frame(dat=crs$dataset[crs$sample,][crs$dataset[crs$sample,]$Species=="virginica","Petal.Width"], grp="virginica"))
# Plot the data.
hs <- hist(ds[ds$grp=="All",1], main="", xlab="Petal.Width", ylab="Frequency", col="grey90", ylim=c(0, 426.011170914191), breaks="fd", border=TRUE)
dens <- density(ds[ds$grp=="All",1], na.rm=TRUE)
rs <- max(hs$counts)/max(dens$y)
lines(dens$x, dens$y*rs, type="l", col=rainbow_hcl(4)[1])
dens <- density(ds[ds$grp=="setosa",1], na.rm=TRUE)
rs <- max(hs$counts)/max(dens$y)
lines(dens$x, dens$y*rs, type="l", col=rainbow_hcl(4)[2])
dens <- density(ds[ds$grp=="versicolor",1], na.rm=TRUE)
rs <- max(hs$counts)/max(dens$y)
lines(dens$x, dens$y*rs, type="l", col=rainbow_hcl(4)[3])
dens <- density(ds[ds$grp=="virginica",1], na.rm=TRUE)
rs <- max(hs$counts)/max(dens$y)
lines(dens$x, dens$y*rs, type="l", col=rainbow_hcl(4)[4])
# Add a rug to the plot to highlight density distribution.
rug(ds[ds$grp=="All",1])
# Add a legend to the plot.
legend("topright", c("All", "setosa", "versicolor", "virginica"), bty="n", fill=rainbow_hcl(4))
# Add a title to the plot.
title(main="Distribution of Petal.Width (sample)
by Species",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
