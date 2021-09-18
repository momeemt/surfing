from private/transformation as trans import nil
from private/utils import nil

proc decode (message: string, time: bool = false): int =
  utils.timeMeasure(time):
    utils.hr()
    echo "decode: " & trans.decode(message)

proc encode (message: string, num: uint = 1, max: int = high(int), time: bool = false): int =
  utils.timeMeasure(time):
    utils.hr()
    if max == high(int):
      echo "encode: " & trans.encode(message, num)
    else:
      echo "encode: " & trans.encode(message, max)

when isMainModule:
  import cligen

  dispatchMulti(
    [decode, short = { "message": 'm', "time": 't' }],
    [encode, short = { "message": 'm', "num": 'n', "time": 't' }]
  )