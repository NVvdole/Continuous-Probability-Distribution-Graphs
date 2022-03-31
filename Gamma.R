# File Name: Gamma.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  alpha <- as.double(readline(prompt = "Enter alpha: "))
  while (alpha <= 0.0) {
    alpha <- as.double(readline(prompt = "Enter alpha: "))
  }
  
  lamb <- as.double(readline(prompt = "Enter lambda: "))
  while (lamb <= 0.0) {
    lamb <- as.double(readline(prompt = "Enter lambda: "))
  }
  
  x <- seq(0.0, 2.0 * (alpha / lamb), 0.01)
  PDF <- dgamma(x, alpha, lamb)
  CDF <- pgamma(x, alpha, lamb)
  
  plot(x, PDF, main = "Gamma Distribution PDF", type = "l")
  mtext(paste("alpha =", alpha, " lambda =", lamb), side = 3)
  
  plot(x, CDF, main = "Gamma Distribution CDF", type = "l")
  mtext(paste("alpha =", alpha, " lambda =", lamb), side = 3)
}
