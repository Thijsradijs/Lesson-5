library(rasta)
data(taravao)
data(taravao2)
taravao

eliminate_cloud <- function(picture, picture2) #Generate the two cloud masks cloud <- calc(taravao[[9]], fun=QA2cloud)
  cloud2 <- calc(taravao2[[9]], fun=QA2cloud)

ˆ# Remove band 9 from both RasterStack objects


taravao11 <- dropLayer(x=taravao, i=9)
taravao12 <- dropLayer(x=taravao2, i=9)

ˆ# Replace cloud contaminated pixels by NAs


cloud[cloud == 1] <- NA
cloud2[cloud2 == 1] <- NA

ˆ# Write a micro function that performs the averaging, as described in the exercis edefi
ni-
  #tion (take a look at the na.rm= argument in the mean() function).
  mean_both <- function(taravao11, taravao12) {
    
    mean_taravao11 <- mean(c(taravao11, taravao12), na.rm = TRUE)
    
    
    
    
    
  }
mean_both(taravao11=taravao11, taravao12=taravao12)

#ˆ Apply the function to the RasterStack objects using calc() or overlay(). Depending #on how you wrote the it, it is possible that overlay() complains about the function #not being vectorized. One quick way to vectorize a function that has multiple input #arguments is by using mapply(). See the example below.

#>  Considering a non vectorised function, with 4 input arguments (a, b, c, d) #  >  called RandomFunction() # >  The vectorized version (VRandomFunction()) can be created as follows #  > VRandomFunction <- function(a, b, c, d) {
#   + out <- mapply(FUN=RandomFunction, a, b, c, d)
#    + return(out)
#    +
# overlay does it for every layer
VRandomFunction <- function(a, b, c, d) {
  out <- mapply(FUN=RandomFunction, a, b, c, d)
  return(out)
  