# Regression model 
# Build a multinomial model using the nnet package.
require(nnet, quietly=TRUE)
# Summarise multinomial model using Anova from the car package.
require(car, quietly=TRUE)
# Build a Regression model.
crs$glm <- multinom(Species ~ ., data=crs$dataset[crs$train,c(crs$input, crs$target)], trace=FALSE, maxit=1000)
# Generate a textual view of the Linear model.
rattle.print.summary.multinom(summary(crs$glm,
                              Wald.ratios=TRUE))
cat(sprintf("Log likelihood: %.3f (%d df)
", logLik(crs$glm)[1], attr(logLik(crs$glm), "df")))
if (is.null(crs$glm$na.action)) omitted <- TRUE else omitted <- -crs$glm$na.action
cat(sprintf("Pseudo R-Square: %.8f
",cor(apply(crs$glm$fitted.values, 1, function(x) which(x == max(x))),
as.integer(crs$dataset[crs$train,][omitted,]$Species))))
cat('==== ANOVA ====
')
print(Anova(crs$glm))
print("
")
# Time taken: 0.36 secs
