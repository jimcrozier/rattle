#--read data & partition data
#============================================================
# Rattle timestamp: 2014-01-24 09:42:32 x86_64-w64-mingw32 
# Load an R data frame.
crs$dataset <- iris
# Display a simple summary (structure) of the dataset.
str(crs$dataset)

#============================================================
# Rattle timestamp: 2014-01-24 09:42:32 x86_64-w64-mingw32 
# Note the user selections. 
# Build the training/validate/test datasets.

set.seed(crv$seed) 
crs$nobs <- nrow(crs$dataset) # 150 observations 
crs$sample <- crs$train <- sample(nrow(crs$dataset), 0.7*crs$nobs) # 105 observations
crs$validate <- sample(setdiff(seq_len(nrow(crs$dataset)), crs$train), 0.15*crs$nobs) # 22 observations
crs$test <- setdiff(setdiff(seq_len(nrow(crs$dataset)), crs$train), crs$validate) # 23 observations

# The following variable selections have been noted.
crs$input <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
crs$numeric <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
crs$categoric <- NULL

crs$target  <- "Species"
crs$risk    <- NULL
crs$ident   <- NULL
crs$ignore  <- NULL
crs$weights <- NULL
