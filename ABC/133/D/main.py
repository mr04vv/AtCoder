n = int(input())
t = [int(i) for i in input().split()] 

ans = []
a = 0

for i in range(len(t)):
  if i % 2 == 0:
    a += t[i]
  else:
    a -= t[i]

ans.append(a)

for i in range(1,len(t)):
  print(t[i-1],ans[i-1])
  ans.append(2*(t[i-1]-(ans[i-1]//2)))

map_result = map(str, ans)
print(" ".join(map_result))