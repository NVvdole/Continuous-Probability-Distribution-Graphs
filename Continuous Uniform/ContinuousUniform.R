# File Name: ContinuousUniform.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  a <- as.double(readline(prompt = "Enter a: "))
  
  b <- as.double(readline(prompt = "Enter b: "))
  while (b <= a) {
    b <- as.double(readline(prompt = "Enter b: "))
  }
  
  x <- seq(from = a, to = b, by = 0.01)
  PDF <- dunif(x, min = a, max = b) 
  CDF <- punif(x, min = a, max = b)
  
  plot(x, PDF, main = "Continuous Uniform Distribution PDF", type = "l")
  mtext(paste("a =", a, " b =", b), side = 3)
  
  plot(x, CDF, main = "Continuous Uniform Distribution CDF", type = "l")
  mtext(paste("a =", a, " b =", b), side = 3)
}
