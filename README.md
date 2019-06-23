# AtCoder
Atcoderの過去問を解いていくリポジトリ

## Nim
ここにメモしていく

### 標準入出力
#### 入力
```
import strutils
import sequtils

let 
    a = readLine(stdin) # string
    b = parseInt(readLine(stdin)) # int
    c = readLine(stdin).split().map(parseInt) # seq[int]
```

#### 出力
```
echo "ABC"
echo $(2) # $(int)で文字列変換
stdout.write "ABC" # 改行なし
echo "ABC", "DEF" # ,で繋げられる
```

### ArrayとSeq
- Array: 固定長配列
- Sequence: 可変長配列
    - 二次元配列の初期化方法
     ```
     var seq = newSeq[seq[int]]()
     ```

### 配列の重複削除
- deduplicate()

```
var array = @[2,3,4,5,2,3,3,2,5]
var arranged_array = deduplicate(array) # [2,3,4,5]
```

めっちゃ便利

### 複数宣言
- 一度に複数の変数を宣言代入

```
let (x1,y1,x2,y2,x3,y3) = (let t = stdin.readline().split().map(parseInt);(t[0],t[1],t[2],t[3],t[4],t[5]))
let (value,node) = (let t = stdin.readline().split().map(parseInt);(t[0],t[1..t.len-1]))
```