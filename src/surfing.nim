from private/transformation as trans import nil
from private/utils import nil

proc decode (message: string): int =
  utils.hr()
  echo "decode: " & trans.decode(message)

proc encode (message: string, num: uint = 1): int =
  utils.hr()
  echo "encode: " & trans.encode(message, num)

when isMainModule:
  import cligen

  dispatchMulti(
    [decode, short = { "message": 'm' }],
    [encode, short = { "message": 'm', "num": 'n' }]
  )