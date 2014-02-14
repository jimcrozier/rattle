# Evaluate model performance. 
# Generate an Error Matrix for the Decision Tree model.
# Obtain the response from the Decision Tree model.
crs$pr <- predict(crs$rpart, newdata=crs$dataset[crs$validate, c(crs$input, crs$target)], type="class")
# Generate the confusion matrix showing counts.
table(crs$dataset[crs$validate, c(crs$input, crs$target)]$Species, crs$pr,
        dnn=c("Actual", "Predicted"))
# Generate the confusion matrix showing percentages.
round(100*table(crs$dataset[crs$validate, c(crs$input, crs$target)]$Species, crs$pr, 
        dnn=c("Actual", "Predicted"))/length(crs$pr))
# Generate an Error Matrix for the Random Forest model.
# Obtain the response from the Random Forest model.
crs$pr <- predict(crs$rf, newdata=na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)]))
# Generate the confusion matrix showing counts.
table(na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)])$Species, crs$pr,
        dnn=c("Actual", "Predicted"))
# Generate the confusion matrix showing percentages.

round(100*table(na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)])$Species, crs$pr, 
        dnn=c("Actual", "Predicted"))/length(crs$pr))
