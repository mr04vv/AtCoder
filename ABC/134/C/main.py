n = int(input())
a = [int(input()) for _ in range(n)]

max1 = max(a)
b = a[:]
b.remove(max1)
max2 = max(b)

for i in a:
  if i == max1:
    print(max2)
  else:
    print(max1)