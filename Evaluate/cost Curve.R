# Cost Curve: requires the ROCR package.
require(ROCR, quietly=TRUE)
# Generate a Cost Curve for the Linear model on tongue [validate].
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input, crs$target)])
plot(0, 0, xlim=c(0, 1), ylim=c(0, 1), xlab="Probability cost function", ylab="Normalized expected cost")
lines(c(0,1),c(0,1))
lines(c(0,1),c(1,0))

# Deal with any missing values in the target variable by 
# ignoring any training data with missing target values.
no.miss <- na.omit(crs$dataset[crs$validate, c(crs$input, crs$target)]$delta)
miss.list <- attr(no.miss, "na.action")
attributes(no.miss) <- NULL
if (length(miss.list)) {
	pred <- prediction(crs$pr[-miss.list], no.miss)
} else {
	pred <- prediction(crs$pr, no.miss)
}
perf1 <- performance(pred, "fpr", "fnr")
for (i in seq_along(perf1@x.values))
{
	for (j in seq_along(perf1@x.values[[i]]))
	{
		lines(c(0,1),c(perf1@y.values[[i]][j],
				perf1@x.values[[i]][j]),
				col=terrain.colors(10)[i],lty=3)
	}
}
perf<-performance(pred, "ecost")
# Bug in ROCR 1.0-3 does not obey the add command.
# Calling the function directly does work.
.plot.performance(perf, lwd=1.5, xlim=c(0,1), ylim=c(0,1), add=T)
op <- par(xpd=TRUE)
text(0, 1.07, "FPR")
text(1, 1.07, "FNR")
par(op)
text(0.12, 1, "Predict +ve")
text(0.88, 1, "Predict -ve")
title(main="Cost Curve Linear tongue [validate]",
    sub=paste("Rattle", format(Sys.time(), "%Y-%b-%d %H:%M:%S"), Sys.info()["user"]))
