# Shell Scripting Race Condition Bug

This repository demonstrates a race condition bug in a shell script and its solution. Race conditions occur when multiple processes compete for shared resources, leading to unpredictable behavior.

## Bug Description
The script showcases two scenarios demonstrating race conditions:
1. Multiple processes writing to the same file concurrently.
2. A loop updating a counter file concurrently.
The outputs are non-deterministic; the result varies on each run. 

## Bug Solution
The solution involves using locking mechanisms (flock) to ensure mutually exclusive access to the shared resource (the file). This prevents race conditions and ensures deterministic behavior. 