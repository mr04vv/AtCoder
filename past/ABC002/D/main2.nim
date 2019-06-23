import strutils,sequtils,future

var
  n, m: int
  ans = 0
(n,m) = stdin.readLine.split.map(parseInt)

var b = lc[newSeq[int](n) | (x <- 0..<n), seq[int]]
for i in 0..<m:
  var x, y: int
  (x,y) = stdin.readLine.split.map(parseInt)
  b[x-1][y-1] = 1
  b[y-1][x-1] = 1

proc dfs(i:int, grp: seq[int]) = 
  if i == n:
    var flag = true
    for j in grp:
      for k in grp:
        if j != k and b[j][k] == 0 and b[j][k] == 0:
          flag = false

    if flag == true:
      ans = max(ans,grp.len)
    return

  else:
    dfs(i+1,grp)
    dfs(i+1,grp & i)

dfs(0,@[])

echo ans