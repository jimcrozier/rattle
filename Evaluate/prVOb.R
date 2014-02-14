# Evaluate model performance. 
# GLM: Generate a Predicted v Observed plot for glm model on tongue [validate].
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input, crs$target)])
# Obtain the observed output for the dataset.
obs <- subset(crs$dataset[crs$validate,], select=crs$target)
# Handle in case categoric target treated as numeric.
obs.rownames <- rownames(obs)
obs <- as.numeric(obs[[1]])
obs <- data.frame(delta=obs)
rownames(obs) <- obs.rownames

# Combine the observed values with the predicted.
fitpoints <- na.omit(cbind(obs, Predicted=crs$pr))
# Obtain the pseudo R2 - a correlation.
fitcorr <- format(cor(fitpoints[,1], fitpoints[,2]), digits=4)
# Plot settings for the true points and best fit.
op <- par(c(lty="solid", col="blue"))
# Display the observed (X) versus predicted (Y) points.
plot(jitter(fitpoints[[1]]), fitpoints[[2]], asp=1, xlab="delta (Jittered)", ylab="Predicted")
# Generate a simple linear fit between predicted and observed.
prline <- lm(fitpoints[,2] ~ fitpoints[,1])
# Add the linear fit to the plot.
abline(prline)
# Add a diagonal representing perfect correlation.
par(c(lty="dashed", col="black"))
abline(0, 1)
# Include a pseudo R-square on the plot
legend("bottomright",  sprintf(" Pseudo R-square=%s ", fitcorr),  bty="n")
# Add a title and grid to the plot.
title(main="Predicted vs. Observed
 Linear Model
 tongue [validate]",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
grid()
