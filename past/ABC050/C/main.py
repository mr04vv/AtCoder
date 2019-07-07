n = int(input())
m = list(map(int, input().split()))

l = {}
ll = {}

if n % 2 == 0:
  for i in m:
    l[2*(i//2)+1] = 2
    if i in ll:
      ll[i] += 1
    else:
      ll[i] = 1
else:
  for i in m:
    if 2*(i//2) == 0:
      l[2*(i//2)] = 1
    else:
      l[2*(i//2)] = 2
    if i in ll:
      ll[i] += 1
    else:
      ll[i] = 1

if l != ll:
  print(0)
  exit()

print((1 << (n // 2)) % ((10 ** 9) + 7))
