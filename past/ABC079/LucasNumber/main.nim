import strutils
import sequtils

var 
  n = parseInt(readLine(stdin))
  (l_pre, l_tmp) = (2, 1)

proc calculateLucas(preL : int, L : int): (int, int) =
  return (L, preL + L)

for i in 2..n :
  (l_pre, l_tmp) = calculateLucas(l_pre, l_tmp)

echo l_tmp 