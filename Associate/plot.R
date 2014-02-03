# Graph of Rules 
# Use 'arulesViz' to plot a graph representing the rules.
require(arulesViz, quietly=TRUE)
# Display a graph representing the rules.
plot(crs$apriori, method="graph")

