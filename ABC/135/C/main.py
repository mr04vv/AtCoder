n = int(input())
a = [int(i) for i in input().split()]
b = [int(i) for i in input().split()]
c = a[:]
ini = sum(c)
for i in range(n):
  if a[i] < b[i]:
    b[i] -= a[i]
    a[i] = 0   
  else:
    a[i] -= b[i]
    b[i] = 0
  

  if a[i+1] < b[i]:
    a[i+1] = 0
  else:
    a[i+1] -= b[i]

print(ini-sum(a))