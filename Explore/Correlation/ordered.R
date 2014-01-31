# Rattle timestamp: 2014-01-31 09:43:18 x86_64-w64-mingw32 
# Generate a correlation plot for the variables. 
# The 'corrplot' package provides the 'corrplot' function.
require(corrplot, quietly=TRUE)
# Correlations work for numeric variables only.
crs$cor <- cor(crs$dataset[crs$sample, crs$numeric], use="pairwise", method="pearson")
# Order the correlations by their strength.
crs$ord <- order(crs$cor[1,])
crs$cor <- crs$cor[crs$ord, crs$ord]
# Display the actual correlations.
print(crs$cor)
# Graphically display the correlations.
corrplot(crs$cor, mar=c(0,0,1,0))
title(main="Correlation iris using Pearson",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
