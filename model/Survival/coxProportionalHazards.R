# Survival Model 
# Require the survival package.
require(survival, quietly=TRUE)
# Build the Survival model.
crs$survival <- coxph(Surv(t, delta) ~ treatment,
      data=crs$dataset[crs$train,c(crs$input, crs$risk, crs$target)])
# Print the results of the modelling.
summary(crs$survival)
# Time taken: 0.01 secs
# Survival chart. 
# Plot the survival chart for the most recent survival model.
plot(survfit(crs$survival), xlab=crs$target,ylab="Survival Probability", col=3)
title(main="Survival Chart t to delta",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
# Survival model residuals plot. 
# Plot the scaled Schoenfeld residuals of proportional hazards.
temp <- cox.zph(crs$survival)
pmax <- 4
pcnt <- 0
nr <- nrow(temp$var)
if (nr < pmax) pmax <- nr
for (vnum in 1:nr)
{
  if (pcnt %% pmax == 0) newPlot(pmax)
  pcnt <- pcnt + 1
  plot(temp, var=vnum)
  abline(0, 0, lty=3)
  # A linear fit.
  abline(lm(temp$y[,vnum] ~ temp$x)$coefficients, lty=4, col=3)
}
