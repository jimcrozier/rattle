# Survival Model 
# Require the survival package.
require(survival, quietly=TRUE)
# Build the Survival model.
crs$survival <- survreg(Surv(t, delta) ~ treatment,
      data=crs$dataset[crs$train,c(crs$input, crs$risk, crs$target)])
# Print the results of the modelling.
summary(crs$survival)
# Time taken: 0.01 secs
