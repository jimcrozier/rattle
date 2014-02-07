#Kernel=Radial Basis
# Support vector machine. 
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="rbfdot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.23 secs

#Kernel=Polynomial
# Support vector machine. 
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="polydot",
      kpar=list("degree"=1),
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.16 secs

#Kernel=Linear
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="vanilladot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.16 secs

#Kernel=Hyperbolic Tangent
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="tanhdot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.18 secs

#Kernel=Laplacian
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="laplacedot",
      prob.model=TRUE)

# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.18 secs

#Kernel=Bessel
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="besseldot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.17 secs

#Kernel=ANOVA RBF
# The 'kernlab' package provides the 'ksvm' function.
require(kernlab, quietly=TRUE)
# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="anovadot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.23 secs

#Kernel=Spline
# The 'kernlab' package provides the 'ksvm' function.\
require(kernlab, quietly=TRUE)

# Build a Support Vector Machine model.
set.seed(crv$seed)
crs$ksvm <- ksvm(as.factor(Species) ~ .,
      data=crs$dataset[crs$train,c(crs$input, crs$target)],
      kernel="splinedot",
      prob.model=TRUE)
# Generate a textual view of the SVM model.
crs$ksvm
# Time taken: 0.30 secs

