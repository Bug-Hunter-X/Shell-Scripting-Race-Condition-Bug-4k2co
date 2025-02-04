#!/bin/bash

# This script demonstrates the solution to the race condition bug using flock.

# Create two files
touch file1.txt
touch file2.txt

# Solution: Use flock to ensure exclusive access to the file
( flock -n 200 file1.txt; echo "Process 1" > file1.txt & )
( flock -n 200 file1.txt; echo "Process 2" > file1.txt & )
wait

cat file1.txt

counter=0;
(while true; do flock -x 200 count.txt; counter=$((counter+1)); echo $counter > count.txt; done ) &
pid=$!

sleep 5
kill $pid