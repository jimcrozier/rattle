# Random Forest 
# The 'party' package provides the 'cforest' function.
require(party, quietly=TRUE)
# Build the Random Forest model.
set.seed(crv$seed)
crs$rf <- cforest(Species ~ .,
      data=na.omit(crs$dataset[crs$sample,c(crs$input, crs$target)]), controls=cforest_unbiased(
      ntree=500,
      mtry=2))
# Generate textual output of 'Random Forest' model.
crs$rf
# List the importance of the variables.
vi <- as.data.frame(sort(varimp(crs$rf), decreasing=TRUE))
 names(vi) <- 'Importance'
vi

#Importance 
# Plot the relative importance of the variables.
set.seed(crv$seed)
require(ggplot2)
v <- varimp(crs$rf)
vimp <- data.frame(Variable=as.character(names(v)),
                   Importance=v,
                   colour=as.factor(ifelse(v<0, "firebrick1", "steelblue")),
row.names=NULL, stringsAsFactors=FALSE)
vimp <- with(vimp, vimp[rev(order(Importance)),])
p <- ggplot(vimp, aes(Variable, Importance))
print(p + geom_bar(aes(fill=colour)) + coord_flip() +
          labs(x="", y="") + opts(legend.position="none"))

#Rules
# Display tree number 1.
party:::prettytree(crs$rf@ensemble[[1]], names(crs$rf@data@get("input")))

