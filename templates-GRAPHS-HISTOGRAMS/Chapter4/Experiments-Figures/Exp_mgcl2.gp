
set encoding utf8 
set terminal postscript enhanced 
set terminal postscript eps size 3.5,3 enhanced color \
    font 'Arial,10'  linewidth 1
##set key box lw 1
set key width 0.5 height 0.5
set key font 'Arial,8'
set key spacing 2
set key right bottom


set terminal postscript eps enhanced size 4.0in,1.8in
set output 'TKE_experiment_mgcl2.eps'

set size 1,1

NZ=2000
NX=2000
SCALE=0.2

set lmargin 7
set rmargin 2

# Axes
set xr [0:NZ] #Time /16
set mytics 5
set mxtics

# Multiplot
set multiplot layout 1,3 rowsfirst

#----------------
#-  First plot  -
#----------------

# labels and axis
set tmargin at screen 0.88; set bmargin at screen 0.15
set size 0.35, 1
set origin 0.02, 0.0


set xrange [0:3.1]
set yrange [-0.0093:0.003]
set ytics -0.010, 0.002, 0.006
#unset ytics
set label gprintf('×10^{%T}',0.008) at graph 0.0, screen 0.94 offset 0.55,-3 font 'Arial,8'
set format y '%.1t'  # Format for 'y' values using mantissa  

set xlabel "t (ps)"
set ylabel "{/Symbol a}_{xx} - 0.5 ({/Symbol a}_{yy} + {/Symbol a}_{zz}) in [arb. unit]" offset 0,0,0
set title "TKE Experiments of Mohsen and Vasileios"  font 'Arial,8' 
unset key
#plotting

set key
c=0.4
plot "../experiment/H2O.dat" using ($1+1.15):($2*c) title       "Pure liquid water" with line ls 1 lc rgb "black" lw 2 dt 7,\
     "../experiment/MgCl2_1M.dat" using ($1+1.15):($2*c) title    "MgCl_2 (1 mol/L)" with line ls 1 lc rgb "green" lw 2,\
     "../experiment/MgCl2_2M.dat" using ($1+1.15):($2*c) title    "MgCl_2 (2 mol/L)" with line ls 1 lc rgb "blue" lw 2,\
     "../experiment/MgCl2_4M.dat" using ($1+1.15):($2*c) title "MgCl_2 (4 mol/L)"   with line ls 1 lc rgb "red" lw 2,\


unset label 
unset arrow 
unset ylabel
unset ytics
unset key
#-----------------
#-  Second plot  -
#-----------------

set tmargin at screen 0.88; set bmargin at screen 0.15
set size 0.37, 1
set origin 0.30,0.0
set title "TKE Experiments of Huang-Haoyu"  font 'Arial,8' 
set xrange [0:3.1]
set xlabel "t (ps)"
unset ytics
set ytics format " "

set key
c=0.0001
plot "purewater" using ($1*0.33-0.2):($2*c) title  "Pure liquid water" with line ls 1 lc rgb "black" lw 2 dt 7,\
     "mgcl2-1.5" using ($1*0.33-0.2):($2*c) title  "MgCl_2 (1.5 mol/L)" with line ls 1 lc rgb "green" lw 2,\
     "mgcl2-3" using ($1*0.33-0.2):($2*c) title    "MgCl_2 (3 mol/L)" with line ls 1 lc rgb "blue" lw 2,\
     "mgcl2-4.5" using ($1*0.33-0.2):($2*c) title  "MgCl_2 (4.5 mol/L)"   with line ls 1 lc rgb "red" lw 2,\



unset label 
unset arrow 

unset multiplot
unset output

