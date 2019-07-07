import strutils

var n = parseInt(stdin.readLine)


var a: int64 = 1 shl (n div 2) mod (1e9.int + 7)
var b: int64 = 1

# var va
for  _ in 0..<(n div 2):
  b = b * 2
  b = b mod (1e9.int + 7)
  
echo a
echo b  