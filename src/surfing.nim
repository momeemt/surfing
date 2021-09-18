from private/transformation as trans import nil
from private/utils import nil

proc decode (message: string, time: bool = false, simple: bool = false): int =
  var time = (not simple) and time
  utils.timeMeasure(time):
    utils.echoResult("decode", trans.decode(message), simple)

proc encode (message: string, num: uint = 1, max: int = high(int), time: bool = false, simple: bool = false): int =
  var time = (not simple) and time
  utils.timeMeasure(time):
    if max == high(int):
      utils.echoResult("encode", trans.encode(message, num), simple)
    else:
      utils.echoResult("encode", trans.encode(message, max), simple)

when isMainModule:
  import cligen

  dispatchMulti(
    [decode, short = { "message": 'm', "time": 't', "simple": 's' }],
    [encode, short = { "message": 'm', "num": 'n', "time": 't', "simple": 's' }]
  )