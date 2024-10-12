library(lattice)
library(data.table)

fx <- function(t){
    cos(t) + 1.5*cos(3*t)
}

fy <- function(t){
    sin(t) + 1.5*sin(3*t)
}

fz <- function(t){
    0.25*sin(4*t)
}

ttt <- seq(0, 2*pi, length.out = 100000)

XYZ <- 
data.table(ttt, x = fx(ttt), y = fy(ttt), z = fz(ttt))[, `:=`(
    r = x - min(x)/(max(x)-min(x)), 
    g = y - min(y)/(max(y)-min(y)),
    b = ttt - min(ttt)/(max(ttt)-min(ttt)))
]

header <- 
"#include \"colors.inc\"
camera {
  location <0, 3.14159, 0>
  look_at 0
  angle 90
}
//light_source { <500, 500, -1000> White }
//light_source { <0, 0, 0> Green }
light_source { <0, 0, 0> White }
// light_source { <-5, 0, -5> Red }
// plane { y, -1.5
//  pigment { checker Blue White }
//}


light_source { <0,0,4> color White }
light_source { <0,0,-4> color White }

light_source { <0,3,4> color White }
light_source { <0,-3,-4> color White }

light_source { <4,0,4> color White }
light_source { <4,0,-4> color White }

light_source { <-4,0,4> color White }
light_source { <-4,0,-4> color White }

//light_source { <0,6,0> color White }
light_source { <-6,0,6> color White }\n"

out <- list()
with(XYZ, {
    outA <- paste0("object { sphere { <", x, ",", z, ",", y,">, 0.05 } pigment { color rgb<", r, ",", g, ",", b,"> } }")

    outs <- c(outA)

    #outs <- paste0("object { sphere { <", x, ",", z, ",", y,">, 0.05 } pigment { color rgb<", r, ",", g, ",", b,"> } }")

    system('rm knot_4_1.pov')
    zz <- file("knot_4_1.pov", "w")
    cat(header, sep = '\n', file = zz)
    cat(outs, sep = '\n', file = zz)
    close(zz)
})

#system('povray gen1.pov')
#system('open gen1.png')

