# ROC Curve: requires the ROCR package.
require(ROCR, quietly=TRUE)
# Generate an ROC Curve for the glm model on tongue [validate].
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input, crs$target)])
# Deal with any missing values in the target variable by 
# ignoring any training data with missing target values.
no.miss <- na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)]$delta)
miss.list <- attr(no.miss, "na.action")
attributes(no.miss) <- NULL
if (length(miss.list)) {
	pred <- prediction(crs$pr[-miss.list], no.miss)
} else {
	pred <- prediction(crs$pr, no.miss)
}
plot(performance(pred, "tpr", "fpr"), col="#CC0000FF", lty=1, add=FALSE)
# Calculate the area under the curve for the plot.
# Deal with any missing values in the target variable by 
# ignoring any training data with missing target values.
no.miss <- na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)]$delta)
miss.list <- attr(no.miss, "na.action")
attributes(no.miss) <- NULL
if (length(miss.list)) {
	pred <- prediction(crs$pr[-miss.list], no.miss)
} else {
	pred <- prediction(crs$pr, no.miss)
}
performance(pred, "auc")
# Add a legend to the plot.
legend("bottomright", c("glm"), col=rainbow(1, 1, .8), lty=1:1, title="Models", inset=c(0.05, 0.05))
# Add decorations to the plot.
title(main="ROC Curve  tongue [validate]",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
grid()
