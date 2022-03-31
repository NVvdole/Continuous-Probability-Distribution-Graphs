# File Name: Cauchy.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  mu <- as.double(readline(prompt = "Enter mu: "))
  
  sig <- as.double(readline(prompt = "Enter sigma: "))
  while (sig <= 0.0) {
    sig <- as.double(readline(prompt = "Enter sigma: "))
  }
  
  x <- seq(mu - (5.0 * sig), mu + (5.0 * sig), 0.01)
  PDF <- dcauchy(x, mu, sig)
  CDF <- pcauchy(x, mu, sig)
  
  plot(x, PDF, main = "Cauchy Distribution PDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
  
  plot(x, CDF, main = "Cauchy Distribution CDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
}
