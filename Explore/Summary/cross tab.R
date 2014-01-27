# The 'CrossTable' package provides the 'descr' function.
require(descr, quietly=TRUE)
# Generate cross tabulations for categoric data.
for (i in 3) 
{ 
  cat(sprintf('CrossTab of %s by target variable %s\n\n', names(crs$dataset)[i], crs$target)) 
  print(CrossTable(crs$dataset[[i]], crs$dataset[[crs$target]], expected=TRUE, format='SAS')) 
  cat(paste(rep('=', 70), collapse=''), '
') 
}
