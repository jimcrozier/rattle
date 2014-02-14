# Score a dataset. 
# Obtain probability scores for the Linear model on tongue [validate].
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input)])
# Extract the relevant variables from the dataset.
sdata <- subset(crs$dataset[crs$validate,], select=c("delta"))
# Output the combined data.
write.csv(cbind(sdata, crs$pr), file="C:\Users\Yan Qian\Documents\tongue_validate_score_idents.csv", row.names=FALSE)
