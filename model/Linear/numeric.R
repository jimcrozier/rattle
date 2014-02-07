# Regression model 
# Build a Regression model.
crs$glm <- lm(Sepal.Length ~ ., data=crs$dataset[crs$train,c(crs$input, crs$target)])
# Generate a textual view of the Linear model.
print(summary(crs$glm))
cat('==== ANOVA ====
')
print(anova(crs$glm))
print("
")
# Time taken: 0.13 secs
