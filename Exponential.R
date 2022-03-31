# File Name: Exponential.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  lamb <- as.double(readline(prompt = "Enter lambda: "))
  while (lamb <= 0.0) {
    lamb <- as.double(readline(prompt = "Enter lambda: "))
  }
  
  x <- seq(0.0, 2.0 / lamb, 0.01)
  PDF <- dexp(x, lamb)
  CDF <- pexp(x, lamb)
  
  plot(x, PDF, main = "Exponential Distribution PDF", type = "l")
  mtext(paste("lambda =", lamb), side = 3)
  
  plot(x, CDF, main = "Exponential Distribution CDF", type = "l")
  mtext(paste("lambda =", lamb), side = 3)
}
