# File Name: Logistic.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  mu <- as.double(readline(prompt = "Enter mu: "))
  
  sig <- as.double(readline(prompt = "Enter sigma: "))
  while (sig <= 0.0) {
    sig <- as.double(readline(prompt = "Enter sigma: "))
  }
  
  x <- seq(mu - (5.0 * sig), mu + (5.0 * sig), 0.01)
  PDF <- dlogis(x, mu, sig)
  CDF <- plogis(x, mu, sig)
  
  plot(x, PDF, main = "Logistic Distribution PDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
  
  plot(x, CDF, main = "Logistic Distribution CDF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
}
