l,r = (int(i) for i in input().split())

if l <= 2019 <= r or r <= 2019 <= l or r - l >= 2019 or l - r >= 2019:
  print(0)
  exit(0)

while l // 2019 > 0 or r // 2019 > 0:
  l = l % 2019
  r = r % 2019

mini = 2*(1e+9)
if l < r:
  for i in range(l,r+1):
    for j in range(i+1,r+1):
      mini = min(mini, (i*j) % 2019)
elif l > r:
  for i in range(r,l+1):
    for j in range(i+1,l+1):

      mini = min(mini, (i*j) % 2019)
elif l == r:
  print(l*r% 2019)
  exit(0)
print(mini)