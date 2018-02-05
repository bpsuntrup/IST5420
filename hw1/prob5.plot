#!/usr/bin/gnuplot
set term epslatex
set output "graph5.png"
P_5(x,y) = 1000*(1+x/y)**(y*5)
set zlabel "P_5"
set xlabel "j"
set ylabel "m"
set view 60,320,1,1
splot [-.15:.15] [1:20] P_5(x,y) with lines

