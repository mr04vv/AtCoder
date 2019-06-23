import strutils
import sequtils

# 15
# 6 2 1 2
# 7 3 3 4 5
# 1 2 6 7
# 2 1 8
# 4 2 9 10
# 5 2 11 12
# 6 0
# 2 1 13
# 3 0
# 1 0
# 9 1 14
# 3 0
# 3 0
# 3 0
# 2 0


# 3
# 6 2 1 2
# 7 0
# 1 0

let
  w = parseInt(readLine(stdin))

var
  v = newSeq[int]()
  nodes = newSeq[seq[int]]()
  sum = 0

for i in 0..<w:
  let (value,node) = (let t = stdin.readline().split().map(parseInt);(t[0],t[1..t.len-1]))
  v.add(value)
  if node[0] != 0:
    nodes.add(node[1..node.len-1])
  else:
    nodes.add(newSeq[int]())    

proc dfs(i: int) =
  sum += v[i]
  stdout.write i
  if nodes[i].len == 0:
    return
  else:
    for j in 0..<nodes[i].len:
      stdout.write "→"
      dfs(nodes[i][j])
    # sum += v[i]
  

dfs(0)
echo ""
echo sum
