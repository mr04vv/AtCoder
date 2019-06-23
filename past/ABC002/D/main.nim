import strutils
import sequtils

let
  (n,m) = stdin.readline().split().map(parseInt)

var arr = newSeq[seq[int]]()

for j in 0..<m:
  let x_y = stdin.readline().split().map(parseInt)
  arr.add(x_y)

echo arr
