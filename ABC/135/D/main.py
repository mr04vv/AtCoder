s = input()

dp = [[0] * 100000] * 13
dp[0][0] = 1
n = len(s)

for i in range(n):
  c = 0
  if s[i] == '?':
    c = -1
  else:
    c = int(s[i])
  for j in range(10):
    if c != -1 and c != j:
       continue
    for ki in range(13):
      dp[i + 1][(ki * 10 + j) % 13] += dp[i][ki]
  for j in range(13):
     dp[i + 1][j] %=  1000000007

res = dp[n][5]
print(res)