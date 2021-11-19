
B3 = bessel_J(3, x)
g = plot(B3, [-10,10])
#g.show(dpi = 300, figsize = 2, fontsize = 4, aspect_ratio = 5)
g.save(filename = "../banners/B3x.png", dpi = 300, figsize = 2, fontsize = 4, aspect_ratio = 5)
