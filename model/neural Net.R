# Neural Network 
# Build a neural network model using the nnet package.
require(nnet, quietly=TRUE)
# Build the NNet model.
set.seed(199)
crs$nnet <- nnet(as.factor(group) ~ .,
    data=crs$dataset[crs$sample,c(crs$input, crs$target)],
    size=10, skip=TRUE, MaxNWts=10000, trace=FALSE, maxit=100)
# Print the results of the modelling.
cat(sprintf("A %s network with %d weights.\n",
    paste(crs$nnet$n, collapse="-"),
    length(crs$nnet$wts)))
cat(sprintf("Inputs: %s.\n",
    paste(crs$nnet$coefnames, collapse=", ")))
cat(sprintf("Output: %s.\n",
    names(attr(crs$nnet$terms, "dataClasses"))[1]))
cat(sprintf("Sum of Squares Residuals: %.4f.\n",
    sum(residuals(crs$nnet) ^ 2)))
cat("\n")
print.summary.nnet.rattle(summary(crs$nnet))
cat('\n')
# Time taken: 0.01 secs
