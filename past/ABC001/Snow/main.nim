import strutils
import sequtils
from math import sum

let
  snow_accumation = parseInt(readLine(stdin))
  sa_one_hour_ago = parseInt(readLine(stdin))

echo $(snow_accumation - sa_one_hour_ago)
