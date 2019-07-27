n,m = (int(i) for i in input().split())

if abs(n-m)%2 == 1:
  print("IMPOSSIBLE")
else:
  print((n+m)//2)