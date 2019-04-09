import strutils 
from math import sum

proc isBeautiful(str: var string) : bool = 
    var isBeautiful: bool = true
    while str.len > 0:
        var count: int = str.count(str[0])
        if count mod 2 == 1:
            isBeautiful = false
            return isBeautiful
        # かぶり文字を見つけて削除
        str = str.replace($str[0],"")
    return isBeautiful

# 標準入力
var inputStr: string = readLine(stdin)

# 三項演算子的なやつ
if isBeautiful(inputStr): echo "Yes" else: echo "No"


