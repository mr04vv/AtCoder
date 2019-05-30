import strutils
import sequtils

let n = readLine(stdin)
var count = 1

for i in 0..n.len()-2:
  if n[i] == n[i+1]:
    count += 1
    if count == 3:
      echo "Yes"
      quit()
  else:
    count = 1

echo "No"