# File Name: Weibull.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  alpha <- as.double(readline(prompt = "Enter alpha: "))
  while (alpha <= 0.0) {
    alpha <- as.double(readline(prompt = "Enter alpha: "))
  }
  
  beta <- as.double(readline(prompt = "Enter beta: "))
  while (beta <= 0.0) {
    beta <- as.double(readline(prompt = "Enter beta: "))
  }
  
  x <- seq(0.0, 5.0, 0.01)
  PDF <- dweibull(x, alpha, beta)
  CDF <- pweibull(x, alpha, beta)
  
  plot(x, PDF, main = "Weibull Distribution PDF", type = "l")
  mtext(paste("alpha =", alpha, " beta =", beta), side = 3)
  
  plot(x, CDF, main = "Weibull Distribution CDF", type = "l")
  mtext(paste("alpha =", alpha, " beta =", beta), side = 3)
}
