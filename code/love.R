#!/usr/bin/env Rscript

x <- seq(-2,2,0.001)
y <- seq(-2,2,0.001)

z <- outer(x,y, function(x,y) (x^2 + y^2 - 1)^3 - x^2*y^3)

outFile <- "../banners/love.png"
png(outFile, h = 400, w = 400, res = 200, pointsize = 8)
par(mar = c(2,2,1,1) + 0.1)
contour(z, levels = 0, drawlabels = FALSE, ylim = c(0.26,0.8), xlim = c(0.23,0.77))
text(0.5,0.6, labels = ("(x^2 + y^2 - 1)^3 = x^2*y^3"), cex = 1)
dev.off()
