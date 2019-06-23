import strutils
import sequtils

let
  input = readLine(stdin)

for i in input:
  if i == 'a' or i == 'i' or i == 'u' or i == 'e' or i == 'o':
    continue
  stdout.write i
  
stdout.write "\n"