n = int(input())
adj = []
for i in range(n):
  adj_i = list(map(int, input().split()[2:]))
  adj.append(adj_i)

sndf = [None]
for i in range(1, n + 1):
    sndf.append(False)

count = 0
placed = [1]

def dfs(i):
  global count
  sndf[i] = True
  count += 1
  print(i,count)

  print(i)
  for j in adj[i-1]:
    if sndf[j] == False:
      dfs(j)
      print(count)
  count += 1
  print(i,count)

dfs(1)

print(sndf)