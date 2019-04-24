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
めっちゃ便利