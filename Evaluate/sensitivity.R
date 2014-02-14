# Evaluate model performance. 
# Sensitivity/Specificity Plot: requires the ROCR package
require(ROCR, quietly=TRUE)
# Generate Sensitivity/Specificity Plot for glm model on sleep [validate].
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input, crs$target)])
# Deal with any missing values in the target variable by 
# ignoring any training data with missing target values.
no.miss <- na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)]$group)
miss.list <- attr(no.miss, "na.action")
attributes(no.miss) <- NULL
if (length(miss.list)) {
	pred <- prediction(crs$pr[-miss.list], no.miss)
} else {
	pred <- prediction(crs$pr, no.miss)
}
plot(performance(pred, "sens", "spec"), col="#CC0000FF", lty=1, add=FALSE)
