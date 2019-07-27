n = int(input())
t = [int(i) for i in input().split()]

count = 0

for idx,v in enumerate(t):
  if count > 2:
    break
  if idx+1 != v:
    count += 1

if count <= 2:
  print("YES")
else:
  print("NO")