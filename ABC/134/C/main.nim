import strutils
import sequtils
import math

let 
    c = readLine(stdin).split().map(parseInt) # seq[int]
var mini = 1000000000

let
  l = c[0] mod 2019
  r = c[1] mod 2019

for i in l..r+1:
  for j in i+1..r+1:
    var a = i * j mod 2019
    mini = min(mini, a)
echo mini