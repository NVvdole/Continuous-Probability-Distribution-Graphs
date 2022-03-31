# File Name: T.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df <- as.double(readline(prompt = "Enter df: "))
  while (df <= 0.0) {
    df <- as.double(readline(prompt = "Enter df: "))
  }
  
  x <- seq(-5.0, 5.0, 0.01)
  PDF <- dt(x, df)
  CDF <- pt(x, df)
  
  plot(x, PDF, main = "T-Distribution PDF", type = "l")
  mtext(paste("df =", df), side = 3)
  
  plot(x, CDF, main = "T-Distribution CDF", type = "l")
  mtext(paste("df =", df), side = 3)
}
