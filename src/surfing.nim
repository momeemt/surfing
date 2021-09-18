from private/transformation as trans import nil
from private/utils import nil

proc decode (message: string, time: bool = false): int =
  utils.timeMeasure(time):
    utils.hr()
    echo "decode: " & trans.decode(message)

proc encode (message: string, num: uint = 1, time: bool = false): int =
  utils.timeMeasure(time):
    utils.hr()
    echo "encode: " & trans.encode(message, num)

when isMainModule:
  import cligen

  dispatchMulti(
    [decode, short = { "message": 'm', "time": 't' }],
    [encode, short = { "message": 'm', "num": 'n', "time": 't' }]
  )