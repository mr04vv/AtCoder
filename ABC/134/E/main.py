n = int(input())
a = [int(input()) for _ in range(n)]
ans = []
count = 1
for i in a:
  if len(ans) == 0:
    ans.append(a[0])
    continue
  doAppend = True
  for idx,ii in enumerate(ans):
    if i > ii:
      count += 1
      doAppend = False
      ans[idx] = i
      break
  if doAppend:
    ans.append(i)

print(count)