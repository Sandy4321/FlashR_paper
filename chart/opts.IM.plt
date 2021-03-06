#!/usr/bin/gnuplot -persist
set terminal postscript eps size 3.3in,1.8in enhanced color
set output "opts-IM.eps"

set boxwidth 1 relative
set ylabel 'relative performance'
set style fill pattern border
set key left top
set key outside above horizontal
set yrange [0:4]
#set logscale y 10
#set xtics rotate by -20
plot "./opts.IM.txt" using 2: xtic(1) title "Base" with histogram, \
		 "./opts.IM.txt" using 3: xtic(1) title "Mem-alloc" with histogram, \
		 "./opts.IM.txt" using 4: xtic(1) title "Mem-fuse" with histogram, \
		 "./opts.IM.txt" using 5: xtic(1) title "Cache-fuse" with histogram
