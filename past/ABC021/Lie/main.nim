import strutils
import sequtils

let f = "rrsssr"
let ff = 33
write(stdout) "ABD", "DEF" , $(ff), f

let
    sum_town :int = parseInt(readLine(stdin))
    towns :seq[int] = readLine(stdin).split().map(parseInt)
    takahashi_town :int = towns[0]
    my_town :int = towns[1]
    via_town_sum :int = parseInt(readLine(stdin))
    via_town_number :seq[int] = readLine(stdin).split().map(parseInt)
    unique_town_number = deduplicate(via_town_number)

if (takahashi_town in via_town_number or my_town in via_town_number):
    echo "NO"
    quit()

if via_town_number.len != unique_town_number.len:
    echo "NO"
    quit()

echo "YES"
        
