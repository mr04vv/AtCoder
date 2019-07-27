n,m = (int(i) for i in input().split())  
d = [[int(i) for i in input().split()] for i in range(n)] 
count = 0
for i,v in enumerate(d):
  for j in range(i+1,len(d)):
    sum = 0
    # print(d[i],d[j])
    for k in range(len(v)):
      sum += abs(d[i][k] - d[j][k])**2
    if pow(sum,1/2).is_integer():
      count += 1

print(count)