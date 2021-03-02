# plot.plt
set term x11 font "-*-helvetica-medium-r-*-*-14-*-*-*-*-*-*-*"
set title "Graficando en Fortran con GNUPlot"
set nokey
set grid
set xlabel "Eje x"
set ylabel "Eje y"
m="data01.txt"
plot m using 1:2 with linespoints
