# The 'latticist' package provides the 'latticist' function.
require(latticist)
# Start up latticist.
latticist(crs$dataset[crs$sample, c(crs$input, crs$risk, crs$target)], spec=list(groups = "Species"))

marginal.plot(dat, data = dat, groups = Species, reorder = FALSE, type = c("p", "l"), 
auto.key = list( lines = TRUE, title = "Species", cex.title = 1,  columns = 3, cex = 0.7), 
sub = list( "N = 105, 2014-01-31, R 2.15.2", x = 0.99, just = "right", cex = 0.7, font = 1))

splom(~dat, data = dat, groups = Species, subset = Species == "virginica", 
panel = function (...) { try(panel.xyplot(...), silent = TRUE); }, type = c("p", "smooth"), 
lower.panel = expression, varname.cex = 0.7, pscales = 0, xlab = NULL, par.settings = simpleTheme(cex = 0.5), 
auto.key = list(lines = TRUE, title = "Species", cex.title = 1, columns = 3, cex = 0.7), 
sub = list(paste("Species == \"virginica\"", "N = 37, 2014-01-31, R 3.0.1", sep = ", "), 
x = 0.99, just = "right", cex = 0.7, font = 1))

parallel(~dat, data = dat, groups = Species, subset = Species == "virginica", par.settings = simpleTheme(), 
auto.key = list(lines = TRUE, points = FALSE, title = "Species", cex.title = 1, columns = 3, cex = 0.7), 
sub = list(paste("Species == \"virginica\"", "N = 37, 2014-01-31, R 3.0.1", sep = ", "), x = 0.99,
just = "right", cex = 0.7, font = 1))

qqmath(~Sepal.Length, data = dat, groups = Species, main = "Distribution of Sepal.Length by Species", 
ylab = "Sepal.Length", type = c("g", "o"), distribution = qnorm, xlab = "Probability (normal distribution)", 
prepanel = prepanel.qqmathline, par.settings = simpleTheme(), auto.key = list(lines = TRUE, type = "o",
points = FALSE, title = "Species", cex.title = 1, columns = 3, cex = 0.7), sub = list("N = 105, 2014-01-31, 
R 3.0.1", x = 0.99, just = "right", cex = 0.7, font = 1), 
scales = list(x = list(at = qnorm(c(0.001, 0.01, 0.05, 0.25, 0.5, 0.75, 0.95, 0.99, 0.999)), 
labels = c(0.001, 0.01, 0.05, 0.25, 0.5, 0.75, 0.95, 0.99, 0.999))))

xyplot(Sepal.Length ~ Petal.Length, data = dat, groups = Species, main = "Sepal.Length vs Petal.Length by Species", 
xlab = "Petal.Length", ylab = "Sepal.Length", jitter.x = TRUE, type = c("p", "a"), par.settings = simpleTheme(), 
auto.key = list(lines = TRUE, title = "Species", cex.title = 1, columns = 3, cex = 0.7), 
sub = list("N = 105, 2014-01-31, R 3.0.1", x = 0.99, just = "right", cex = 0.7, font = 1))
