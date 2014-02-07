# Regression model 
# Build a Regression model.
crs$glm <- glm(time ~ ., data=crs$dataset[crs$train,c(crs$input, crs$target)], family=poisson(log))
# Generate a textual view of the Linear model.
print(summary(crs$glm))
cat('==== ANOVA ====
')
print(anova(crs$glm))
print("
")
# Time taken: 0.02 secs
