from strutils import split, parseInt
import sequtils

let
  inputIntSeq = readLine(stdin).split().map(parseInt)
var  
  stringSeq = newSeq[string]()

for i in 1..inputIntSeq[0]:
    stringSeq.add(readLine(stdin))

for i in 1..inputIntSeq[0]:
    for j in 0..1:
        echo stringSeq[i-1]