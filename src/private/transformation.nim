import base64, re, strutils

func decode* (encode_str: string): string =
  result = encode_str
  while result.match(re"^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"):
    result = base64.decode(result)
    result = result.replace(" ", "")
    result = result.replace("\n", "")

proc encode* (raw_str: string, times: uint = 1): string =
  result = raw_str
  for _ in 1..times:
    result = base64.encode(result)

proc encode* (raw_str: string, max: int): string =
  result = raw_str
  while true:
    var encoded = base64.encode(result)
    if encoded.len <= max:
      result = encoded
    else: break