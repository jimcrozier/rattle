# Evaluate model performance. 
# Risk Chart: requires the ggplot2 package.
require(ggplot2, quietly=TRUE)
# Generate a risk chart.
# Rattle provides evaluateRisk() and riskchart().
crs$pr <- predict(crs$glm, type="response", newdata=crs$dataset[crs$validate, c(crs$input, crs$target)])
crs$eval <- evaluateRisk(crs$pr, crs$dataset[crs$validate, c(crs$input, crs$target)]$group)
print(riskchart(crs$pr, 
                crs$dataset[crs$validate, c(crs$input, crs$target)]$group, 
                title="Performance Chart Linear sleep [validate] ", show.lift=TRUE, show.precision=TRUE))
