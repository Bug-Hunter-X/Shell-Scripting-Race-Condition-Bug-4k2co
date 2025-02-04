#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Race condition: Two processes try to write to the same file simultaneously
( echo "Process 1" > file1.txt & )
( echo "Process 2" > file1.txt & )
wait

# The output is unpredictable, sometimes Process 1 wins and sometimes Process 2 wins
cat file1.txt

#Another Race Condition Example with variable
counter=0;
( while true; do counter=$((counter+1)); echo $counter > count.txt; done ) & 
pid=$!

sleep 5;
kill $pid