#! /bin/bash
gnuplot -persist <<EOF
set data style linespoints
show timestamp
set title "$1"
set xlabel "time (seconds)"
set ylabel "Congestion Window Size"
plot "$1" using 1:37 title "snd_cwnd"

EOF
