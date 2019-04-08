n = int(input())
a = list(input().split())

count = 0

for i in range(len(a)):
    while int(a[i]) % 2 == 0:
        a[i] = int(a[i])/2
        count+=1
print(count)