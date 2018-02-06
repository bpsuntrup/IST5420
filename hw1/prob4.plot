#!/usr/bin/gnuplot
#set term epslatex
set term png
set output "graph4.eps"

P_5(x) = 1000*(1+.015/x)**(x*5)

set ylabel "P_5 for different values of m"
set xlabel "m"
#set view 60,320,1,1
#splot [-.15:.15] [1:20] P_5(x,y) with lines

set xrange[0:20]
plot P_5(x)
