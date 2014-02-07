#Traditional 

# Random Forest 
# The 'randomForest' package provides the 'randomForest' function.
require(randomForest, quietly=TRUE)
# Build the Random Forest model.
set.seed(crv$seed)
crs$rf <- randomForest(Species ~ .,
      data=crs$dataset[crs$sample,c(crs$input, crs$target)], 
      ntree=500,
      mtry=2,
      importance=TRUE,
      na.action=na.roughfix,
      replace=FALSE)
# Generate textual output of 'Random Forest' model.
crs$rf
# List the importance of the variables.
rn <- round(importance(crs$rf), 2)
rn[order(rn[,3], decreasing=TRUE),]

#Importance
#Show the relative importance of variables. Useful to see which variables play the most important roles.
# Plot the relative importance of the variables.
varImpPlot(crs$rf, main="")
title(main="Variable Importance Random Forest iris",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
    
#Rules
#Display a collection of rules obtained from a specific tree from the random forest of teees.
# Display tree number 1.
printRandomForests(crs$rf, 1)

#Errors
#Plot error rate prgressively for the number of trees built.Useful for deciding the optimal numbers of trees to build.
# Plot the error rate against the number of trees.
plot(crs$rf, main="")
legend("topright", c("OOB", "setosa", "versicolor", "virginica"), text.col=1:6, lty=1:3, col=1:3)
title(main="Error Rates Random Forest iris",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
    
#OOB Roc
#Plot the ROC curve based on the out-of-bag (OOB) predictions for each observation in the training dataset.
# Plot the OOB ROC curve.
require(verification)
aucc <- roc.area(as.integer(as.factor(crs$dataset[crs$sample, crs$target]))-1,
                 crs$rf$votes[,2])$A
roc.plot(as.integer(as.factor(crs$dataset[crs$sample, crs$target]))-1,
         crs$rf$votes[,2], main="")
legend("bottomright", bty="n",
       sprintf("Area Under the Curve (AUC) = %1.3f", aucc))
title(main="OOB ROC Curve Random Forest iris",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))




