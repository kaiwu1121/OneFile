set term postscript color eps enhanced 22
set output "pset-ll-1k.eps"

set size 0.95,1.12

X=0.1
W=0.26
M=0.025

load "styles.inc"

set tmargin 0
set bmargin 3

set multiplot layout 2,3

unset key

set grid ytics

set xtics ("" 1, "" 2, 4, "" 8, 16, 32, 48, 64) nomirror out offset -0.25,0.5
set label at screen 0.5,0.04 center "Number of threads"
set label at screen 0.5,1.09 center "Persistent linked list sets with 10^{3} keys"

#set logscale x
set xrange [1:64]

# First row

set lmargin at screen X
set rmargin at screen X+W

set ylabel offset 1.5,0 "Operations ({/Symbol \264}10^6/s)"
set ytics 0.2 offset 0.5,0
set format y "%g"
set yrange [0:0.7]

set label at graph 0.5,1.075 center font "Helvetica-bold,18" "100%"

set key at graph 0.99,0.99 samplen 1.5

plot \
	'../data/pset-ll-1k.txt'     using 1:($2/1e6)  with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($3/1e6)  with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($4/1e6)  with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($5/1e6)  with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($6/1e6)  with linespoints notitle ls 5 lw 3 dt (1,1)

unset ylabel
set ytics format ""

set lmargin at screen X+(W+M)
set rmargin at screen X+(W+M)+W

unset label
set yrange [0:1]
set style textbox opaque noborder fillcolor rgb "white"
set label at first 1,1 front boxed left offset -0.5,0 "1"
set label at graph 0.5,1.075 center font "Helvetica-bold,18" "50%"

plot \
    '../data/pset-ll-1k.txt'     using 1:($7/1e6)  with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($8/1e6)  with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($9/1e6)  with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($10/1e6) with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($11/1e6) with linespoints notitle ls 5 lw 3 dt (1,1)

set lmargin at screen X+2*(W+M)
set rmargin at screen X+2*(W+M)+W

unset label
set ytics 0.5 offset 0.5,0
set yrange [0:3]
set style textbox opaque noborder fillcolor rgb "white"
set label at first 1,3 front boxed left offset -0.5,0 "3"
set label at graph 0.5,1.075 center font "Helvetica-bold,18" "10%"

plot \
    '../data/pset-ll-1k.txt'     using 1:($12/1e6) with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($13/1e6) with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($14/1e6) with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($15/1e6) with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($16/1e6) with linespoints notitle ls 5 lw 3 dt (1,1)

# Second row

set lmargin at screen X
set rmargin at screen X+W

set ylabel offset -0.5,0 "Operations ({/Symbol \264}10^6/s)"
set ytics 1 offset 0.5,0
set format y "%g"
set yrange [0:4]

unset label
set label at graph 0.5,1.075 center font "Helvetica-bold,18" "1%"

plot \
    '../data/pset-ll-1k.txt'     using 1:($17/1e6) with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($18/1e6) with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($19/1e6) with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($20/1e6) with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($21/1e6) with linespoints notitle ls 5 lw 3 dt (1,1)

unset ylabel
set ytics format ""

set lmargin at screen X+(W+M)
set rmargin at screen X+(W+M)+W

unset label
set yrange [0:8]
set style textbox opaque noborder fillcolor rgb "white"
set label at first 1,8 front boxed left offset -0.5,0 "8"
set label at graph 0.5,1.075 center font "Helvetica-bold,18" "0.1%"

plot \
    '../data/pset-ll-1k.txt'     using 1:($22/1e6) with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($23/1e6) with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($24/1e6) with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($25/1e6) with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($26/1e6) with linespoints notitle ls 5 lw 3 dt (1,1)

set lmargin at screen X+2*(W+M)
set rmargin at screen X+2*(W+M)+W

unset label
set ytics 10 offset 0.5,0
set yrange [0:60]
set style textbox opaque noborder fillcolor rgb "white"
set label at first 1,60 front boxed left offset -0.5,0 "60"
set label at graph 0.5,1.075 center font "Helvetica-bold,18" "0%"

plot \
    '../data/pset-ll-1k.txt'     using 1:($27/1e6) with linespoints notitle ls 1 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($28/1e6) with linespoints notitle ls 2 lw 3 dt 1,     \
    '../data/pset-ll-1k.txt'     using 1:($29/1e6) with linespoints notitle ls 3 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($30/1e6) with linespoints notitle ls 4 lw 3 dt (1,1), \
    '../data/pset-ll-1k.txt'     using 1:($31/1e6) with linespoints notitle ls 5 lw 3 dt (1,1)
