import svgwrite
import math
from svgwrite import cm, mm   
from sympy.ntheory.generate import prime
from sympy import sieve

def recaman(n):
    ## from Ely Golden (http://oeis.org/A005133)
    seq = []
    for i in range(n):
        if(i == 0): x = 0
        else: x = seq[i-1]-i
        if(x>=0 and x not in seq): seq+=[x]
        else: seq+=[seq[i-1]+i]
    return seq

def cald(n):
    ## A006509 (http://oeis.org/A006509)
    P = [i for i in sieve.primerange(0,prime(n+1))]
    seq = []
    for i in range(n):
        if(i == 0): x = 1
        else: x = seq[i-1] - P[i-1]
        if(x>=0 and x not in seq + [0]): seq+=[x]
        else: seq+=[seq[i-1] + P[i-1]]
    return seq

xm = 2
xo = 10 
y  = 100
n =  90

rec = recaman(n)
cal = cald(n)

print('Recamán: min %d, max %d' % (min(rec), max(rec)))

ai = []

for i in range(len(rec) -1):
    if(rec[i] < rec[i+1]):
        ai.append(i % 2)
    else: ai.append((i+1) %2)


xi = [(rec[i]*xm + xo, y, 1, 1, ai[i], rec[i+1]*xm + xo, y) for i in
        range(len(rec) -1)]

def drawSeq(name):

    dwg = svgwrite.Drawing(filename=name, size = ('480','200'), debug=True)

    pa = dwg.add(dwg.g(id='pa', fill='none', stroke='black'))

    for i in xi:
        pa.add(dwg.path(d="M %d,%d A%d,%d 0 0 %d %d,%d" % i)) 

    dwg.save()

if __name__ == '__main__':
    drawSeq('../banners/recaman_100.svg')

