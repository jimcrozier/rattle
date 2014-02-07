crs$glm <- glm(Sepal.Length ~ ., data=crs$dataset[crs$train,c(crs$input, crs$target)], family=gaussian(identity))
# Generate a textual view of the Linear model.
print(summary(crs$glm))
cat('==== ANOVA ====
')
print(anova(crs$glm))
print("
")

# Time taken: 0.03 secs
