# File Name: ChiSquare.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df <- as.integer(readline(prompt = "Enter df: "))
  while (df < 1) {
    df <- as.integer(readline(prompt = "Enter df: "))
  }
  
  x <- seq(0.0, 5.0 * df, 0.01)
  PDF <- dchisq(x, df)
  CDF <- pchisq(x, df)
  
  plot(x, PDF, main = "Chi-Square Distribution PDF", type = "l")
  mtext(paste("df =", df), side = 3)
  
  plot(x, CDF, main = "Chi-Square Distribution CDF", type = "l")
  mtext(paste("df =", df), side = 3)
}
