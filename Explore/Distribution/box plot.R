# Box Plot 
# The 'ggplot2' package provides the 'ggplot' function.
require(ggplot2, quietly=TRUE)
# Box Plot for Sepal.Length
pp <- with(crs,
           ggplot(dataset[sample,]) + 
           geom_boxplot(aes("All", Sepal.Length), notch=TRUE) + 
           geom_boxplot(aes(Species, Sepal.Length), notch=TRUE) + 
           xlab("Species\n\nRattle 2014-Jan-27 10:52:46 cyx") + 
           ggtitle("Distribution of Sepal.Length (sample)
by Species") + 
           theme(legend.position="none")
          )
print(pp)

