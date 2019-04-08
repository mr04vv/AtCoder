d,n = map(int,input().split())

if d is 0:
    if n == 100:
        print(n+1)
    else:
        print(n)
elif d is 1:
    if n == 100:
        print((n+1)*100)
    else:
        print(n*100)
elif d is 2:
    if n == 100:
        print((n+1)*100**2)
    else:
        print(n*100**2)