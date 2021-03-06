set terminal X11 noenhanced
set title "encoder(4*2) d3=0 d2=1 d1=0 d0=1"
set xlabel "s"
set grid
unset logscale x 
set xrange [0.000000e+00:4.000000e-08]
unset logscale y 
set yrange [-5.000000e+02:1.050000e+04]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot '../ppt/encyd2d0.data' using 1:2 with lines lw 1 title "xmemh1_o1.x1",\
'../ppt/encyd2d0.data' using 3:4 with lines lw 1 title "xmemh1_d0.x1",\
'../ppt/encyd2d0.data' using 5:6 with lines lw 1 title "xmemh1_d1.x1",\
'../ppt/encyd2d0.data' using 7:8 with lines lw 1 title "xmemh1_d2.x1",\
'../ppt/encyd2d0.data' using 9:10 with lines lw 1 title "xmemh1_d3.x1"
set terminal push
set terminal postscript eps color noenhanced
set out '../ppt/encyd2d0.eps'
replot
set term pop
replot
