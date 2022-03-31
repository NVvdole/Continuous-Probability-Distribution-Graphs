# File Name: Lognormal.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  mu <- as.double(readline(prompt = "Enter mu: "))
  
  sig <- as.double(readline(prompt = "Enter sigma: "))
  while (sig <= 0.0) {
    sig <- as.double(readline(prompt = "Enter sigma: "))
  }
  
  mean <- exp(mu + ((sig ^ 2.0) / 2.0))
  x <- seq(0.0, 5.0 * mean, 0.01)
  PDF <- dlnorm(x, mu, sig)
  CDF <- plnorm(x, mu, sig)
  
  plot(x, PDF, main = "Lognormal Distribution PDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
  
  plot(x, CDF, main = "Lognormal Distribution CDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
}
