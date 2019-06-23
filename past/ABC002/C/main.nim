import strutils
import sequtils

let (x1,y1,x2,y2,x3,y3) = (let t = stdin.readline().split().map(parseInt);(t[0],t[1],t[2],t[3],t[4],t[5]))

echo 1/2 * float(abs((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1)))