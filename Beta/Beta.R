# File Name: Beta.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  alpha1 <- as.double(readline(prompt = "Enter alpha1: "))
  while (alpha1 <= 0.0) {
    alpha1 <- as.double(readline(prompt = "Enter alpha1: "))
  }
  
  alpha2 <- as.double(readline(prompt = "Enter alpha2: "))
  while (alpha2 <= 0.0) {
    alpha2 <- as.double(readline(prompt = "Enter alpha2: "))
  }
  
  x <- seq(0.0, 1.0, 0.01)
  PDF <- dbeta(x, alpha1, alpha2)
  CDF <- pbeta(x, alpha1, alpha2)
  
  plot(x, PDF, main = "Beta Distribution PDF", type = "l")
  mtext(paste("alpha1 =", alpha1, " alpha2 =", alpha2), side = 3)
  
  plot(x, CDF, main = "Beta Distribution CDF", type = "l")
  mtext(paste("alpha1 =", alpha1, " alpha2 =", alpha2), side = 3)
}
