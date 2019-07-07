import algorithm,sequtils,strutils,math

var
  n: int = parseInt(stdin.readLine)
  al: seq[int] = stdin.readLine.split.map(parseInt)  
  x: int = 0
  bl: seq[int] = newSeq[int]()

al.sort do (x,y:int) -> int : result = cmp(x,y)

if n mod 2 == 0:
  for i in 0..<n:
    bl.add(2*(i div 2)+1)
else:
  bl.add(0)
  for i in 0..<n-1:
    bl.add(2*(i div 2)+2)
    
if al != bl:
  echo 0
else:
  var result = 1
  # var va
  for  _ in 0..<(n div 2):
    result = result * 2
    # result = result mod (1e9.int + 7)
  echo result
  # let ans = 1 shl (n div 2)
  # echo ans mod (1e9.int + 7)
  # ((1 << (n // 2)) % ((10 ** 9) + 7))
  # (1 << (n // 2)) % ((10 ** 9) + 7)