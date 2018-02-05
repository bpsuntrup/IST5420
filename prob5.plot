#!/usr/bin/gnuplot
set term png
set output "prob5.png"
P_5(x,y) = 1000*(1+x/y)**(y*5)
set zlabel "P_5"
set xlabel "j"
set ylabel "m"
splot [-.15:.15] [1:20] P_5(x,y) with lines

