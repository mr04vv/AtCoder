from strutils import split, parseInt
from math import sum
import sequtils

var 
  questionSum = readLine(stdin).parseInt()
let
  solveTime = readLine(stdin).split().map(parseInt)
var
  drinkSum = readLine(stdin).parseInt() 
  questionTimeRelation = newSeq[seq[int]]()

for i in 1..drinkSum:
    var q_t = readLine(stdin).split().map(parseInt)
    questionTimeRelation.add(q_t)

for i in 1..drinkSum:
    var solveTimeCopy = solveTime
    solveTimeCopy[questionTimeRelation[i-1][0]-1] = questionTimeRelation[i-1][1]
    var sum = 0
    for j in 0..solveTimeCopy.len-1:
        sum += solveTimeCopy[j]
    echo $sum