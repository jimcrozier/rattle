# Rattle timestamp: 2014-01-31 10:46:36 x86_64-w64-mingw32 
# Principal Components Analysis (on numerics only).
pc <- princomp(na.omit(crs$dataset[crs$sample, crs$numeric]), scale=TRUE, center=TRUE, tol=0)
# Show the output of the analysis.
pc
# Summarise the importance of the components found.
summary(pc)
# Display a plot showing the relative importance of the components.
plot(pc, main="")
title(main="Principal Components Importance iris",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
# Display a plot showing the two most principal components.
biplot(pc, main="")
title(main="Principal Components iris",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
