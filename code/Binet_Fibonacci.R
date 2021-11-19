#!/usr/bin/env Rscript

outFile <- c("../banners/Binet-Fibonacci_curve.png")

xt <- function(t){
		phi <- 1.6180339888
		1/(phi + phi^(-1)) * (exp(t*log(phi)) - cos(pi*t)*exp(-t*log(phi)))
}


yt <- function(t){
		phi <- 1.6180339888
		1/(phi + phi^(-1)) * (-sin(pi*t) * exp(-t*log(phi)))
}


t <- seq(0,7, length = 1e3)

FT <- cbind(Re = xt(t), Im = yt(t))

png(outFile, h = 300, w = 900, res = 300, pointsize = 10)
par(oma = c(0.1,0,0,0), mar = c(1.8,0,0,0.1) + 0.1)
plot(FT, type = 'l', ylim = c(-0.4,.25), xaxt='n', yaxt = 'n', ylab = "", xlab = "")
axis(side = 1, at = c(0,1,2,3,5,8,13))
dev.off()




