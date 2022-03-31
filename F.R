# File Name: F.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df1 <- as.integer(readline(prompt = "Enter df1: "))
  while (df1 < 1) {
    df1 <- as.integer(readline(prompt = "Enter df1: "))
  }

  df2 <- as.integer(readline(prompt = "Enter df2: "))
  while (df2 < 1) {
    df2 <- as.integer(readline(prompt = "Enter df2: "))
  }
  
  x <- seq(0.0, 5.0, 0.01)
  PDF <- df(x, df1, df2)
  CDF <- pf(x, df1, df2)
  
  plot(x, PDF, main = "F-Distribution PDF", type = "l")
  mtext(paste("df1 =", df1, " df2 =", df2), side = 3)
  
  plot(x, CDF, main = "F-Distribution CDF", type = "l")
  mtext(paste("df1 =", df1, " df2 =", df2), side = 3)
}
