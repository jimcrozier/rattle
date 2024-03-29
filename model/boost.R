# Ada Boost 
# The `ada' package implements the boost algorithm.
require(ada, quietly=TRUE)
# Build the Ada Boost model.
set.seed(crv$seed)
crs$ada <- ada(death ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      control=rpart.control(maxdepth=30,
           cp=0.010000,
           minsplit=20,
           xval=10),
      iter=50)
# Print the results of the modelling.
print(crs$ada)
round(crs$ada$model$errs[crs$ada$iter,], 2)
cat('Variables actually used in tree construction:\n')
print(sort(names(listAdaVarsUsed(crs$ada))))
cat('\nFrequency of variables actually used:\n')
print(listAdaVarsUsed(crs$ada))
# Time taken: 0.35 secs
